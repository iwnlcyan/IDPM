/* ========================================================================= *
 *                                                                           *
 *                               OpenMesh                                    *
 *           Copyright (c) 2001-2022, RWTH-Aachen University                 *
 *           Department of Computer Graphics and Multimedia                  *
 *                          All rights reserved.                             *
 *                            www.openmesh.org                               *
 *                                                                           *
 *---------------------------------------------------------------------------*
 * This file is part of OpenMesh.                                            *
 *---------------------------------------------------------------------------*
 *                                                                           *
 * Redistribution and use in source and binary forms, with or without        *
 * modification, are permitted provided that the following conditions        *
 * are met:                                                                  *
 *                                                                           *
 * 1. Redistributions of source code must retain the above copyright notice, *
 *    this list of conditions and the following disclaimer.                  *
 *                                                                           *
 * 2. Redistributions in binary form must reproduce the above copyright      *
 *    notice, this list of conditions and the following disclaimer in the    *
 *    documentation and/or other materials provided with the distribution.   *
 *                                                                           *
 * 3. Neither the name of the copyright holder nor the names of its          *
 *    contributors may be used to endorse or promote products derived from   *
 *    this software without specific prior written permission.               *
 *                                                                           *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS       *
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED *
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A           *
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER *
 * OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,  *
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,       *
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR        *
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF    *
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING      *
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS        *
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.              *
 *                                                                           *
 * ========================================================================= */



//=============================================================================
//
//  CLASS newClass
//
//=============================================================================


#ifndef OPENMESH_VDPROGMESH_VDPMSYNTHESIZERVIEWERWIDGET_HH
#define OPENMESH_VDPROGMESH_VDPMSYNTHESIZERVIEWERWIDGET_HH


//== INCLUDES =================================================================

#include <string>
#include <QTimer>

#include <OpenMesh/Core/IO/MeshIO.hh>
#include <OpenMesh/Core/Mesh/TriMesh_ArrayKernelT.hh>
#include <OpenMesh/Apps/QtViewer/MeshViewerWidgetT.hh>

#include <OpenMesh/Tools/VDPM/MeshTraits.hh>
#include <OpenMesh/Tools/VDPM/StreamingDef.hh>
#include <OpenMesh/Tools/VDPM/ViewingParameters.hh>
#include <OpenMesh/Tools/VDPM/VHierarchy.hh>
#include <OpenMesh/Tools/VDPM/VFront.hh>


//== FORWARDDECLARATIONS ======================================================


//== NAMESPACES ===============================================================

namespace OpenMesh {


//== CLASS DEFINITION =========================================================

	      
typedef TriMesh_ArrayKernelT<VDPM::MeshTraits>	VDPMMesh;
typedef MeshViewerWidgetT<VDPMMesh>		MeshViewerWidget;


  // using view dependent progressive mesh 

  using VDPM::Plane3d;
  using VDPM::VFront;
  using VDPM::VHierarchy;
  using VDPM::VHierarchyNode;
  using VDPM::VHierarchyNodeIndex;
  using VDPM::VHierarchyNodeHandle;
  using VDPM::VHierarchyNodeHandleContainer;
  using VDPM::ViewingParameters;


//== CLASS DEFINITION =========================================================


  class CameraInfo
  {
  private:
	  Camera* camera;
	  float lastX;
	  float lastY;

  public:
	  CameraInfo()
	  {
		  camera = new Camera(0.0f, 5.0f, 10.0f, 0.0f, 1.0f, 0.0f, -90.0f, -20.0f);
		  lastX = -1;
		  lastY = -1;
	  }
	  ~CameraInfo()
	  {
		  delete camera;
	  }

	  Camera* getCamera()
	  {
		  return camera;
	  }
	  float getLastX()
	  {
		  return lastX;
	  }
	  float getLastY()
	  {
		  return lastY;
	  }

	  void setLastX(float x)
	  {
		  lastX = x;
	  }
	  void setLastY(float y)
	  {
		  lastY = y;
	  }
  };


  class TimingInfo
  {
  private:
	  float currentFrame;
	  float deltaTime;
	  float lastFrame;
	  bool rotationPaused;
	  float rotationTime;

  public:
	  TimingInfo()
	  {
		  currentFrame = 0.0f;
		  deltaTime = 0.0f;
		  lastFrame = 0.0f;
		  rotationPaused = true;
		  rotationTime = 0.0f;
	  }
	  ~TimingInfo() { }

	  float getCurrentFrame()
	  {
		  return currentFrame;
	  }
	  float getDeltaTime()
	  {
		  return deltaTime;
	  }
	  float getLastFrame()
	  {
		  return lastFrame;
	  }
	  bool isRotationPaused()
	  {
		  return rotationPaused;
	  }
	  float getRotationTime()
	  {
		  return rotationTime;
	  }

	  void setCurrentFrame(float frame)
	  {
		  currentFrame = frame;
	  }
	  void setDeltaTime()
	  {
		  deltaTime = currentFrame - lastFrame;
	  }
	  void setLastFrame(float frame)
	  {
		  lastFrame = frame;
	  }
	  void setRotationPaused(bool pause)
	  {
		  rotationPaused = pause;
	  }
	  void setRotationTime(float time)
	  {
		  rotationTime = time;
	  }
  };


  class LightingInfo
  {
  private:
	  const glm::vec3 LIGHTPOS = glm::vec3(3.0f, 4.0f, 2.64575f);
	  float currentLightSourcePosition; // along the light's path circumference
	  float lightSourceVelocity;
	  float lightPathRadius;
	  float directionFlip;
	  bool lightPaused;

  public:
	  LightingInfo()
	  {
		  currentLightSourcePosition = 1.69612f;
		  lightSourceVelocity = 2.0f;
		  lightPathRadius = 4.0f;
		  directionFlip = 1.0f;
		  lightPaused = true;
	  }
	  ~LightingInfo() { }

	  glm::vec3 getLIGHTPOS()
	  {
		  return LIGHTPOS;
	  }
	  float getCurrentLightSourcePosition() // gets position of light at the moment it was paused
	  {
		  return currentLightSourcePosition;
	  }
	  float getLightSourceVelocity()
	  {
		  return lightSourceVelocity;
	  }
	  float getLightPathRadius()
	  {
		  return lightPathRadius;
	  }
	  float getDirectionFlip()
	  {
		  return directionFlip;
	  }
	  bool isLightPaused()
	  {
		  return lightPaused;
	  }

	  void setCurrentLightSourcePosition(float pos)
	  {
		  currentLightSourcePosition = pos;
	  }
	  void setLightSourceVelocity(float velocity)
	  {
		  lightSourceVelocity = velocity;
	  }
	  void setLightPathRadius(float radius)
	  {
		  lightPathRadius = radius;
	  }
	  void setDirectionFlip(float flipValue)
	  {
		  directionFlip = flipValue;
	  }
	  void setLightPaused(bool paused)
	  {
		  lightPaused = paused;
	  }
  };


class VDPMSynthesizerViewerWidget : public MeshViewerWidget
{
public:

  typedef MeshViewerWidget Base;
  std::map<GLchar, Character> screenText;
  bool VDPMSynthesizerViewerWidgetCloseFlag;

public:

	VDPMSynthesizerViewerWidget(QWidget* _parent = 0, const char* _name = 0);

	~VDPMSynthesizerViewerWidget();

  /// open view-dependent progressive mesh
  void open_vd_prog_mesh(const char* _filename);

  VDPMSynthesizerViewerWidget* getVDPMSynthesizerViewerWidget()
  {
	  return this;
  }
 
  CameraInfo* getCameraInfo()
  {
	  return cameraInfo;
  }

  TimingInfo* getTimingInfo()
  {
	  return timingInfo;
  }

  LightingInfo* getLightingInfo()
  {
	  return lightingInfo;
  }

  Model* getModelToRender()
  {
	  return modelsList[activeModelIndex];
  }

  int getActiveShaderID()
  {
	  return activeShaderID;
  }

  bool getNormalsDisplaySetting()
  {
	  return normalsDisplaySetting;
  }

  int getWidth()
  {
	  return this -> width();
  }

  int getHeight()
  {
	  return this -> height();
  }

  int getNumSamples()
  {
	  return numSamples;
  }

private:

  QString             qFilename_;
  VHierarchy          vhierarchy_;
  VFront              vfront_;
  ViewingParameters   viewing_parameters_;
  float               kappa_square_;
  bool                adaptive_mode_;
  bool                ToonShading_mode = false;
  int                 activeShaderID;
  int                 numSamples;

  unsigned int        n_base_vertices_;
  unsigned int        n_base_edges_;
  unsigned int        n_base_faces_;
  unsigned int        n_details_;

  CameraInfo* cameraInfo;
  TimingInfo* timingInfo;
  LightingInfo* lightingInfo;
  bool normalsDisplaySetting;
  std::vector<Model*> modelsList;
  int activeModelIndex;

    
private:

  bool outside_view_frustum(const OpenMesh::Vec3f &pos, float radius);

  bool oriented_away(float sin_square, 
		     float distance_square, 
		     float product_value);

  bool screen_space_error(float mue_square, 
			  float sigma_square, 
			  float distance_square, 
			  float product_value);

  void update_viewing_parameters();

  virtual void keyPressEvent(QKeyEvent* _event);

protected:

  /// inherited drawing method
  virtual void draw_scene(const std::string& _draw_mode);

public:

  void adaptive_refinement();	

  int drawNPR();

  bool qrefine(VHierarchyNodeHandle _node_handle);		

  void force_vsplit(VHierarchyNodeHandle _node_handle);

  bool ecol_legal(VHierarchyNodeHandle _parent_handle, 
		  VDPMMesh::HalfedgeHandle& v0v1);

  void get_active_cuts(VHierarchyNodeHandle _node_handle, 
		       VDPMMesh::VertexHandle &vl, VDPMMesh::VertexHandle &vr);

  void vsplit(VHierarchyNodeHandle _node_handle, 
	      VDPMMesh::VertexHandle vl, VDPMMesh::VertexHandle vr);

  void ecol(VHierarchyNodeHandle _parent_handle, 
	    const VDPMMesh::HalfedgeHandle& v0v1);

  void init_vfront();
 
};



//=============================================================================
} // namespace OpenMesh
//=============================================================================
#endif // OPENMESHAPPS_VDPMSYNTHESIZERVIEWERWIDGET_HH defined
//=============================================================================
