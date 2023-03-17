#include <iostream>  
#include <OpenMesh/Core/IO/MeshIO.hh>  
#include <OpenMesh/Core/Mesh/TriMesh_ArrayKernelT.hh>  
#include<GL/glut.h>
#include <math.h>
#include <Windows.h>
#include <string>

#define  GLUT_WHEEL_UP 3           //������ֲ���
#define  GLUT_WHEEL_DOWN 4

using namespace std;
typedef OpenMesh::TriMesh_ArrayKernelT<> MyMesh;

//��꽻���йص�
int mousetate = 0; //��굱ǰ��״̬
GLfloat Oldx = 0.0; // ���֮ǰ��λ��
GLfloat Oldy = 0.0;
GLuint texture;
//��ʵ�ֽǶȴ�С��صĲ�����ֻ��Ҫ�����Ϳ������
float xRotate = 0.0f;   //��ת
float yRotate = 0.0f;
float ty = 0.0f;
float tx = 0.0f;
float scale = 0.004;

//�ļ���ȡ�йص�
MyMesh mesh;  //mesh���ļ���ȡ�ˣ���װ��mesh������
//"E:\1KMD\Research\Illumination Guided LOD\IDPM\Models";
const string file_1 = "E:\\1KMD�γ�\\Research\\Illumination Guided LOD\\IDPM\\Models\\buddha.obj";
const string file_2 = "E:\\1KMD�γ�\\Research\\Illumination Guided LOD\\IDPM\\Models\\bunny.obj";
const string file_3 = "E:\\1KMD�γ�\\Research\\Illumination Guided LOD\\IDPM\\Models\\dragon.obj";
const string file_4 = "E:\\1KMD�γ�\\Research\\Illumination Guided LOD\\IDPM\\Models\\erato.obj";
const string file_5 = "E:\\1KMD�γ�\\Research\\Illumination Guided LOD\\IDPM\\Models\\indonesian_statue.obj";
const string file_6 = "E:\\1KMD�γ�\\Research\\Illumination Guided LOD\\IDPM\\Models\\serapis.obj";
//const string file_7 = "G:\\source\\OpenGL\\ObjLoader\\ObjLoader\\ObjLoader\\data\\teddy.obj";
const string file_7 = "E:\\1KMD�γ�\\Research\\Illumination Guided LOD\\IDPM\\Models\\bunny_lowpoly.obj";
const string file_8 = "E:\\1KMD�γ�\\Research\\Illumination Guided LOD\\IDPM\\Models\\bunny_lowpoly.obj";
const string file_9 = "E:\\1KMD�γ�\\Research\\Illumination Guided LOD\\IDPM\\Models\\bunny_lowpoly.obj";
int currentfile = 1;

GLuint showFaceList, showWireList;
int showstate = 1;
bool showFace = true;
bool showWire = false;
bool showFlatlines = false;



void setLightRes() {
	//GLfloat lightPosition[] = { 0.0f, 0.0f, 1.0f, 0.0f };
	GLfloat lightPosition[] = { 0.0f, 1.0f, 0.0f, 0.0f }; // ƽ�й�Դ, GL_POSITION���Ե����һ������Ϊ0


	glLightfv(GL_LIGHT0, GL_POSITION, lightPosition);
	glEnable(GL_LIGHTING); //���ù�Դ
	glEnable(GL_LIGHT0);   //ʹ��ָ���ƹ�
}
void SetupRC()
{
	glEnable(GL_DEPTH_TEST);
	glFrontFace(GL_CCW);
	glEnable(GL_CULL_FACE);
	// ���ù��ռ���
	glEnable(GL_LIGHTING);
	// ָ��������ǿ�ȣ�RGBA��
	GLfloat ambientLight[] = { 1.0f, 0.0f, 0.0f, 0.0f };
	// ���ù���ģ�ͣ���ambientLight��ָ����RGBAǿ��ֵӦ�õ�������
	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, ambientLight);
	// ������ɫ׷��
	glEnable(GL_COLOR_MATERIAL);
	// ���ö��������Ļ������ɢ���������ԣ�׷��glColor
	glColorMaterial(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
	//glClearColor(0.0f, 0.0f, 0.5f, 1.0f);
}

//��ʼ���������   
void initGL()
{
	//ʵ����ʾ�б�
	glClearColor(0.0, 0.0, 0.0, 0.0);
	glClearDepth(2.0);
	glShadeModel(GL_SMOOTH);
	glEnable(GL_DEPTH_TEST); //����������Ȼ������Ĺ��ܣ�������OPengl�Ϳ��Ը���Z���ϵ����أ���ô��ֻ����ǰ��û�ж���������²Ż����������أ��ڻ���3dʱ��������ã��Ӿ�Ч����Ƚ���ʵ
	//glEnable(GL_TEXTURE_2D);
		// ------------------- Lighting  
	//glEnable(GL_LIGHTING); // ���enbale��ô��ʹ�õ�ǰ�Ĺ��ղ���ȥ�Ƶ��������ɫ
	//glEnable(GL_LIGHT0); //��һ����Դ����GL_LIGHT1��ʾ�ڶ�����Դ
					 // ------------------- Display List  
	setLightRes();
	SetupRC();//���û�����
	showFaceList = glGenLists(1);
	showWireList = glGenLists(1);
	int temp = mesh.n_edges();

	// ���� wire 
	glNewList(showWireList, GL_COMPILE);
	glDisable(GL_LIGHTING);
	glLineWidth(1.0f);
	glColor3f(0.5f, 0.5f, 0.5f);//��ɫ
	glBegin(GL_LINES);
	for (MyMesh::HalfedgeIter he_it = mesh.halfedges_begin(); he_it != mesh.halfedges_end(); ++he_it) {
		//�����������ߵ������յ�
		glVertex3fv(mesh.point(mesh.from_vertex_handle(*he_it)).data());
		glVertex3fv(mesh.point(mesh.to_vertex_handle(*he_it)).data());
	}
	glEnd();
	glEnable(GL_LIGHTING);
	glEndList();

	// ����flat
	glNewList(showFaceList, GL_COMPILE);
	for (MyMesh::FaceIter f_it = mesh.faces_begin(); f_it != mesh.faces_end(); ++f_it) {
		glBegin(GL_TRIANGLES);
		for (MyMesh::FaceVertexIter fv_it = mesh.fv_iter(*f_it); fv_it.is_valid(); ++fv_it) {
			glNormal3fv(mesh.normal(*fv_it).data());
			glVertex3fv(mesh.point(*fv_it).data());
		}
		glEnd();
	}
	glEndList();
}




// ������ı��С��ʱ�򣬸ı䴰�ڴ�Сʱ����ͼ�α���
void myReshape(GLint w, GLint h)
{
	glViewport(0, 0, static_cast<GLsizei>(w), static_cast<GLsizei>(h));
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	if (w > h)
		glOrtho(-static_cast<GLdouble>(w) / h, static_cast<GLdouble>(w) / h, -1.0, 1.0, -100.0, 100.0);
	else
		glOrtho(-1.0, 1.0, -static_cast<GLdouble>(h) / w, static_cast<GLdouble>(h) / w, -100.0, 100.0);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
}


// ��ȡ�ļ��ĺ���
void readfile(string file) {
	// ���󶥵㷨�� vertex normals
	mesh.request_vertex_normals();
	//��������ڶ��㷨�ߣ��򱨴� 
	if (!mesh.has_vertex_normals())
	{
		cout << "���󣺱�׼�������� �����ߡ�������" << endl;
		return;
	}
	// ����ж��㷢�����ȡ�ļ������뵽mesh������
	OpenMesh::IO::Options opt;
	if (!OpenMesh::IO::read_mesh(mesh, file, opt))
	{
		cout << "�޷���ȡ�ļ�:" << file << endl;
		return;
	}
	else cout << "�ɹ���ȡ�ļ�:" << file << endl;
	cout << endl; // Ϊ��ui��ʾ�ÿ�һЩ
				  //��������ڶ��㷨�ߣ�������
	if (!opt.check(OpenMesh::IO::Options::VertexNormal))
	{
		// ͨ���淨�߼��㶥�㷨��
		mesh.request_face_normals();
		// mesh��������㷨��
		mesh.update_normals();
		// �ͷ��淨��
		mesh.release_face_normals();
	}
}

//  ���̽��� 1. �л��ļ� 2.�л���ʾ
void mySpecial(int key, int x, int y) {
	switch (key) {
	case GLUT_KEY_F1:
		cout << "��ȡ�ļ�:" << file_1 << " ��......" << endl;
		readfile(file_1);
		scale = 0.5;
		currentfile = 1;
		initGL();
		break;
	case GLUT_KEY_F2:
		cout << "��ȡ�ļ�:" << file_2 << " ��......" << endl;
		readfile(file_2);
		scale = 0.5;
		currentfile = 2;
		initGL();
		break;
	case GLUT_KEY_F3:
		cout << "��ȡ�ļ�:" << file_3 << " ��......" << endl;
		readfile(file_3);
		scale = 0.5;
		currentfile = 3;
		initGL();
		break;
	case GLUT_KEY_F4:
		cout << "��ȡ�ļ�:" << file_4 << " ��......" << endl;
		readfile(file_4);
		scale = 0.5;
		currentfile = 3;
		initGL();
		break;
	case GLUT_KEY_F5:
		cout << "��ȡ�ļ�:" << file_5 << " ��......" << endl;
		readfile(file_5);
		scale = 0.5;
		currentfile = 5;
		initGL();
		break;
	case GLUT_KEY_F6:
		cout << "��ȡ�ļ�:" << file_6 << " ��......" << endl;
		readfile(file_6);
		scale = 0.5;
		currentfile = 3;
		initGL();
		break;
	case GLUT_KEY_F7:
		cout << "��ȡ�ļ�:" << file_7 << " ��......" << endl;
		readfile(file_7);
		scale = 5;
		currentfile = 3;
		initGL();
		break;
	case GLUT_KEY_F8:
		cout << "��ȡ�ļ�:" << file_8 << " ��......" << endl;
		readfile(file_8);
		scale = 5;
		currentfile = 3;
		initGL();
		break;
	case GLUT_KEY_F9:
		cout << "��ȡ�ļ�:" << file_9 << " ��......" << endl;
		readfile(file_9);
		scale = 5;
		currentfile = 3;
		initGL();
		break;
	case GLUT_KEY_INSERT:
		if (showFace == true) {
			showFace = false;
			showWire = true;

			cout << "�л���ʾģʽΪ��WireFrame" << endl;
		}
		else if (showWire == true)
		{
			showWire = false;
			showFlatlines = true;
			cout << "�л���ʾģʽΪ��Flatlines" << endl;
		}
		else if (showFlatlines == true) {
			showFlatlines = false;
			showFace = true;
			//DisplaySphere(0.5, "G:\\source\\OpenGL\\Cow\\checkerboard3.bmp");
			cout << "�л���ʾģʽΪ��Flat" << endl;
		}
		break;
	case GLUT_KEY_LEFT:
		tx -= 0.01;
		break;
	case GLUT_KEY_RIGHT:
		tx += 0.01;
		break;
	case GLUT_KEY_UP:
		ty += 0.01;
		break;
	case GLUT_KEY_DOWN:
		ty -= 0.01;
		break;
	default:
		break;
	}
	glutPostRedisplay();
}

// ��꽻��
void myMouse(int button, int state, int x, int y)
{
	if (button == GLUT_LEFT_BUTTON && state == GLUT_DOWN) {
		mousetate = 1;
		Oldx = x;
		Oldy = y;
	}
	if (button == GLUT_LEFT_BUTTON && state == GLUT_UP)
		mousetate = 0;
	//�����¼�
	if (state == GLUT_UP && button == GLUT_WHEEL_UP) {
		//cout << "hello" << endl; 
		//�������ϻ�����scale��С
		if (currentfile == 1)
			scale += 0.05;
		if (currentfile == 2)
			scale += 0.05;
		if (currentfile == 5) {
			scale += 0.05;
		}
		else
			scale += 0.05;
	}
	if (state == GLUT_UP && button == GLUT_WHEEL_DOWN) {
		//cout << "good" << endl;
		//�������»�����scale����
		if (currentfile == 1)
			scale -= 0.05;
		if (currentfile == 2)
			scale -= 0.05;
		if (currentfile == 5) {
			scale -= 0.05;
		}
		else
			scale -= 0.05;
	}
	glutPostRedisplay();
}

// ����˶�ʱ
void onMouseMove(int x, int y) {
	if (mousetate) {
		//x��Ӧy����Ϊ��Ӧ���Ƿ�����
		yRotate += x - Oldx;
		glutPostRedisplay();//��ǵ�ǰ������Ҫ���»���
		Oldx = x;
		xRotate += y - Oldy;
		glutPostRedisplay();
		Oldy = y;
	}
}

void myDisplay()
{
	//Ҫ���֮ǰ����Ȼ���
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glLoadIdentity();
	//����ʾ��صĺ���
	glRotatef(xRotate, 1.0f, 0.0f, 0.0f); // ��������ת�ĺ��� ��һ�������ǽǶȴ�С������Ĳ�������ת�ķ�����
	glRotatef(yRotate, 0.0f, 1.0f, 0.0f);
	//glTranslatef(0.0f, 0.0f, ty);
	glTranslatef(tx, ty, 0);
	glScalef(scale, scale, scale); // ����

								   //ÿ��display��Ҫʹ��glcalllist�ص�������ʾ����ʾ�Ķ����б�
	if (showFace)
		glCallList(showFaceList);
	if (showFlatlines) {
		glCallList(showFaceList);
		glCallList(showWireList);
	}
	if (showWire)
		glCallList(showWireList);

	glutSwapBuffers(); //����Opengl������ʵ��˫���漼����һ����Ҫ����
}

int main(int argc, char** argv)
{
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH); // GLUT_Double ��ʾʹ��˫������ǵ�����
	glutInitWindowPosition(100, 100);
	glutInitWindowSize(800, 500);
	glutCreateWindow("Mesh Viewer");
	//һ��ʼĬ�϶�ȡ�ļ�1
	//readfile(file_1);
	//initGL();
	glutMouseFunc(myMouse);
	glutMotionFunc(onMouseMove); // ����ƶ���ʱ��ĺ���
	glutSpecialFunc(&mySpecial);
	glutReshapeFunc(&myReshape);
	glutDisplayFunc(&myDisplay);

	glutMainLoop();
	return 0;
}