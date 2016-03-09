#include<GL/glut.h>
#include<stdio.h>
#include<stdlib.h>
void display();
void init();
int main(int argc ,char *argv[])
{
    glutInit(&argc,argv);
    glutInitWindowSize(100,100);
    glutInitDisplayMode(GLUT_RGB|GLUT_DOUBLE);
    glutInitWindowPosition(300,200);
    glutCreateWindow("mygltest");
    glutDisplayFunc(display);
    glutMainLoop();
    return 0;
}

void display()
{
}

void init()
{
	glEnable(GL_DEPTH_TEST);
	glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
	glClearColor(1.0f,0.0f,0.0f,1.0f);

}
