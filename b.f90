PROGRAM b
IMPLICIT NONE
Integer,parameter :: nx=128,ny=129,nz=84
INTEGER :: I,J,K,COUNT
REAL,DIMENSION(nx,ny,nz) :: ux

OPEN(10,FILE='uy001',FORM='UNFORMATTED',&
ACCESS='DIRECT', RECL=4, STATUS='OLD')
COUNT = 1
DO K=1,nz
    DO J=1,ny
        DO I=1,nx
            READ(10,REC=COUNT) ux(I,J,K)
            WRITE(*,*) ux(I,J,K)
            COUNT = COUNT + 1
        ENDDO
    ENDDO
ENDDO
CLOSE(10)
END PROGRAM b
