variable param1 VARCHAR2(15)
variable param2 VARCHAR2(128)
variable param3 VARCHAR2(30)
variable param4 VARCHAR2(30)
variable param5 VARCHAR2(20)
variable param6 VARCHAR2(20)
DECLARE  
KM_�ڋqID DT_�ڋq���C��.�ڋqID % TYPE; 
KM_���� DT_�ڋq���C��.���� % TYPE := 1;
KM_���C���Z���ʔ� DT_�ڋq���C��.���C���Z���ʔ� % TYPE := 1;
KM_�i�t DT_�ڋq���C��.�i�t % TYPE:= '';
KM_�Љ���t DT_�ڋq���C��.�Љ���t % TYPE := TO_DATE('1900/01/01', 'YYYY/MM/DD');   
KM_�Љ�ҌڋqID DT_�ڋq���C��.�Љ�ҌڋqID % TYPE := 0;
KM_�Љ�Ҏ��� DT_�ڋq���C��.�Љ�Ҏ��� % TYPE := '';
KM_��� DT_�ڋq���C��.��� % TYPE := 0;
KM_�ڋq���� DT_�ڋq���C��.�ڋq���� % TYPE := '';
KM_������� DT_�ڋq���C��.������� % TYPE := 0;
KM_�ڋq�󋵋敪 DT_�ڋq���C��.�ڋq�󋵋敪 % TYPE := 1;
KM_�w�����@�R�[�h DT_�ڋq���C��.�w�����@�R�[�h % TYPE  := 1;
KM_���R�[�h DT_�ڋq���C��.���R�[�h % TYPE := 'Z00000000001';
KM_�L���R�[�h DT_�ڋq���C��.�L���R�[�h % TYPE := '99999';
KM_�c�l���s�敪 DT_�ڋq���C��.�c�l���s�敪 % TYPE := 1;
KM_���[�U�[ID DT_�ڋq���C��.���[�U�[ID % TYPE := 9900; 
KM_�X�V���� DT_�ڋq���C��.�X�V���� % TYPE := SYSDATE;
KM_�c�l���t�� DT_�ڋq���C��.�c�l���t�� % TYPE := 1;
KM_EC�ڋq�ԍ� DT_�ڋq���C��.EC�ڋq�ԍ� % TYPE := NULL; 
KM_EC����t���O DT_�ڋq���C��.EC����t���O % TYPE := NULL; 
KM_EC����މ�t���O DT_�ڋq���C��.EC����މ�t���O % TYPE := NULL; 
KM_�̑������t�L�� DT_�ڋq���C��.�̑������t�L�� % TYPE := 1;
KM_�̑��d�b�L�� DT_�ڋq���C��.�̑��d�b�L�� % TYPE := 1;

KJ_�ڋq�Z���ʔ� DT_�ڋq�Z��.�ڋq�Z���ʔ�%TYPE := 1;
KJ_���� DT_�ڋq�Z��.����%TYPE := 1;
KJ_�Z���敪 DT_�ڋq�Z��.�Z���敪%TYPE := '����';
KJ_�d�b�敪 DT_�ڋq�Z��.�d�b�敪%TYPE := '����'; 
KJ_�Z���R�[�h DT_�ڋq�Z��.�Z���R�[�h%TYPE := '12227003000'; 
KJ_�Z���R�[�h�����N DT_�ڋq�Z��.�Z���R�[�h�����N%TYPE := 0; 
KJ_�X�֔ԍ� DT_�ڋq�Z��.�X�֔ԍ�%TYPE := '2790012';
KJ_�J�i�Z�� DT_�ڋq�Z��.�J�i�Z��%TYPE := '��޹� ��Խ� ���� 12'; 
KJ_�s���{�� DT_�ڋq�Z��.�s���{��%TYPE:= '��t��'; 
KJ_�s���{���R�[�h DT_�ڋq�Z��.�s���{���R�[�h%TYPE := 12; 
KJ_�s��S������ DT_�ڋq�Z��.�s��S������%TYPE := '�Y���s'; 
KJ_���� DT_�ڋq�Z��.����%TYPE := '���D'; 
KJ_���� DT_�ڋq�Z��.����%TYPE := 1; 
KJ_���N���� DT_�ڋq�Z��.���N����%TYPE := '19900817'; 
KJ_�Ζ��於 DT_�ڋq�Z��.�Ζ��於%TYPE := ''; 
KJ_���[���敪 DT_�ڋq�Z��.���[���敪%TYPE := '����';
KJ_���[���A�h���X DT_�ڋq�Z��.���[���A�h���X%TYPE:= ''; 
KJ_�h�� DT_�ڋq�Z��.�h��%TYPE := '�l';
KJ_�d�b�ԍ��Q DT_�ڋq�Z��.�d�b�ԍ��Q%TYPE := ''; 
KJ_�d�b�敪�Q DT_�ڋq�Z��.�d�b�敪�Q%TYPE := '�e�`�w'; 
KJ_�d�b�ԍ��R DT_�ڋq�Z��.�d�b�ԍ��R%TYPE := ''; 
KJ_�d�b�敪�R DT_�ڋq�Z��.�d�b�敪�R%TYPE := '�g�@��'; 
KJ_�d�b�ԍ��S DT_�ڋq�Z��.�d�b�ԍ��S%TYPE := ''; 
KJ_�d�b�敪�S DT_�ڋq�Z��.�d�b�敪�S%TYPE := ''; 
KJ_�d�b�ԍ��T DT_�ڋq�Z��.�d�b�ԍ��T%TYPE := ''; 
KJ_�d�b�敪�T DT_�ڋq�Z��.�d�b�敪�T%TYPE := ''; 
KJ_�d�b�ԍ��U DT_�ڋq�Z��.�d�b�ԍ��U%TYPE := ''; 
KJ_�d�b�敪�U DT_�ڋq�Z��.�d�b�敪�U%TYPE := ''; 
KJ_��� DT_�ڋq�Z��.���%TYPE := 0; 
KJ_EC�Z����� DT_�ڋq�Z��.EC�Z�����%TYPE := NULL; 
KJ_EC�ڋq�Z���ԍ� DT_�ڋq�Z��.EC�ڋq�Z���ԍ�%TYPE := NULL; 

TM_�Θb���NO DT_�Θb���C��.�Θb���NO%TYPE := 1;
TM_��t���� DT_�Θb���C��.��t����%TYPE := SYSDATE;  
TM_��t�����R�[�h DT_�Θb���C��.��t�����R�[�h%TYPE := 17000;
TM_��t�҃R�[�h DT_�Θb���C��.��t�҃R�[�h%TYPE := 9900;
TM_��t���� DT_�Θb���C��.��t����%TYPE := 1;
TM_�Θb�� DT_�Θb���C��.�Θb��%TYPE := 1;
TM_�e�c�ԍ� DT_�Θb���C��.�e�c�ԍ�%TYPE := '99';
TM_���e DT_�Θb���C��.���e%TYPE := '�ڋq�o�^�̂�';
TM_�啪�ރR�[�h DT_�Θb���C��.�啪�ރR�[�h%TYPE := '34';
TM_�����ރR�[�h DT_�Θb���C��.�����ރR�[�h%TYPE := '21';
TM_�����ރR�[�h DT_�Θb���C��.�����ރR�[�h%TYPE := '001';
TM_�摜�ۑ��p�X DT_�Θb���C��.�摜�ۑ��p�X%TYPE := '';
TM_�摜�R�[�h DT_�Θb���C��.�摜�R�[�h%TYPE := '';
TM_���͓��� DT_�Θb���C��.���͓���%TYPE := SYSDATE;
TM_���͕����R�[�h DT_�Θb���C��.���͕����R�[�h%TYPE := 17000;
TM_���͎҃R�[�h DT_�Θb���C��.���͎҃R�[�h%TYPE := 9900;
TM_�����Θb�t���O DT_�Θb���C��.�����Θb�t���O%TYPE := 1;
TM_�����Θb���� DT_�Θb���C��.�����Θb����%TYPE := SYSDATE; 
TM_�����Θb�A�� DT_�Θb���C��.�����Θb�A��%TYPE := 0;
TM_�������������R�[�h DT_�Θb���C��.�������������R�[�h%TYPE := ''; 
TM_���������ރR�[�h DT_�Θb���C��.���������ރR�[�h%TYPE := ''; 
TM_���������ރR�[�h DT_�Θb���C��.���������ރR�[�h%TYPE := ''; 
TM_�����o�^���� DT_�Θb���C��.�����o�^����%TYPE := ''; 
TM_�쐬�敪 DT_�Θb���C��.�쐬�敪%TYPE := 0;
TM_�폜�t���O DT_�Θb���C��.�폜�t���O%TYPE := 0;
TM_�e�Θb���NO DT_�Θb���C��.�e�Θb���NO%TYPE := 0;
TM_�R�[���o�b�N DT_�Θb���C��.�R�[���o�b�N%TYPE := 0;

TM2_�Θb���NO DT_�Θb���C��.�Θb���NO%TYPE := 2;
TM2_���e DT_�Θb���C��.���e%TYPE := '�e�X�g';
TM2_�啪�ރR�[�h DT_�Θb���C��.�啪�ރR�[�h%TYPE := '90';
TM2_�����ރR�[�h DT_�Θb���C��.�����ރR�[�h%TYPE := '0';
TM2_�����ރR�[�h DT_�Θb���C��.�����ރR�[�h%TYPE := '0';
TM2_�쐬�敪 DT_�Θb���C��.�쐬�敪%TYPE := 65;

TK_�J�e�S��NO DT_�Θb�J�e�S��.�J�e�S��NO%TYPE := 99;
TK_�T�u�R�[�h DT_�Θb�J�e�S��.�T�u�R�[�h%TYPE := 99;
         
begin 

    SAVEPOINT sp1;
    
        :param1 := '&1';
        :param2 := '&2';
        :param3 := '&3';
        :param4 := '&4';
        :param5 := '&5';
        :param6 := '&6';
    
        SELECT SQ_�ڋqID����.NEXTVAL INTO KM_�ڋqID FROM DUAL;
        
        INSERT INTO DT_�ڋq���C�� (
        			 �ڋqID
        			,����
        			,���C���Z���ʔ�
        			,�i�t
        			,�Љ���t
        			,�Љ�ҌڋqID
        			,�Љ�Ҏ���
        			,���
        			,�ڋq����
        			,�������
        			,�ڋq�󋵋敪
        			,�w�����@�R�[�h
        			,���R�[�h
        			,�L���R�[�h
        			,�c�l���s�敪
        			,���[�U�[ID
        			,�X�V����
        			,�c�l���t��
        			,EC�ڋq�ԍ�
        			,EC����t���O
        			,EC����މ�t���O
        			,�̑������t�L��
        			,�̑��d�b�L��
        		) VALUES (
        			 KM_�ڋqID
        			,KM_����
        			,KM_���C���Z���ʔ�
        			,KM_�i�t
        			,KM_�Љ���t
        			,KM_�Љ�ҌڋqID
        			,KM_�Љ�Ҏ���
        			,KM_���
        			,KM_�ڋq����
        			,KM_�������
        			,KM_�ڋq�󋵋敪
        			,KM_�w�����@�R�[�h
        			,KM_���R�[�h
        			,KM_�L���R�[�h
        			,KM_�c�l���s�敪
        			,KM_���[�U�[ID
        			,KM_�X�V����
        			,KM_�c�l���t��
        			,KM_EC�ڋq�ԍ�
        			,KM_EC����t���O
        			,KM_EC����މ�t���O
        			,KM_�̑������t�L��
        			,KM_�̑��d�b�L��
        		);
        INSERT INTO DT_�ڋq�Z�� (
        			 �ڋqID
        			,�ڋq�Z���ʔ�
        			,����
        			,�Z���敪
        			,�d�b�ԍ�
        			,�d�b�敪
        			,�Z���R�[�h
        			,�Z���R�[�h�����N
        			,�X�֔ԍ�
        			,�J�i�Z��
        			,�s���{��
        			,�s���{���R�[�h
        			,�s��S������
        			,����
        			,�Z���ڍ�
        			,�J�i����_��
        			,�J�i����_��
        			,����_��
        			,����_��
        			,����
        			,���N����
        			,�Ζ��於
        			,���[���敪
        			,���[���A�h���X
        			,�h��
        			,�d�b�ԍ��Q
        			,�d�b�敪�Q
        			,�d�b�ԍ��R
        			,�d�b�敪�R
        			,�d�b�ԍ��S
        			,�d�b�敪�S
        			,�d�b�ԍ��T
        			,�d�b�敪�T
        			,�d�b�ԍ��U
        			,�d�b�敪�U
        			,���[�U�[ID
        			,���
        			,�X�V����
        			,EC�Z�����
        			,EC�ڋq�Z���ԍ�
        		) VALUES (
        			 KM_�ڋqID
        			,KJ_�ڋq�Z���ʔ�
        			,KJ_����
        			,KJ_�Z���敪
        			,:param1
        			,KJ_�d�b�敪
        			,KJ_�Z���R�[�h
        			,KJ_�Z���R�[�h�����N
        			,KJ_�X�֔ԍ�
        			,KJ_�J�i�Z��
        			,KJ_�s���{��
        			,KJ_�s���{���R�[�h
        			,KJ_�s��S������
        			,KJ_����
        			,:param2
        			,:param3
        			,:param4
        			,:param5
        			,:param6
        			,KJ_����
        			,KJ_���N����
        			,KJ_�Ζ��於
        			,KJ_���[���敪
        			,KJ_���[���A�h���X
        			,KJ_�h��
        			,KJ_�d�b�ԍ��Q
        			,KJ_�d�b�敪�Q
        			,KJ_�d�b�ԍ��R
        			,KJ_�d�b�敪�R
        			,KJ_�d�b�ԍ��S
        			,KJ_�d�b�敪�S
        			,KJ_�d�b�ԍ��T
        			,KJ_�d�b�敪�T
        			,KJ_�d�b�ԍ��U
        			,KJ_�d�b�敪�U
        			,KM_���[�U�[ID
        			,KJ_���
        			,KM_�X�V����
        			,KJ_EC�Z�����
        			,KJ_EC�ڋq�Z���ԍ�
        		);    
        INSERT INTO DT_�Θb���C��(
        			 �ڋqID
        			,�Θb���NO
        			,��t����
        			,��t�����R�[�h
        			,��t�҃R�[�h
        			,��t����
        			,�Θb��
        			,�e�c�ԍ�
        			,���e
        			,�啪�ރR�[�h
        			,�����ރR�[�h
        			,�����ރR�[�h
        			,�摜�ۑ��p�X
        			,�摜�R�[�h
        			,���͓���
        			,���͕����R�[�h
        			,���͎҃R�[�h
        			,�����Θb�t���O
        			,�����Θb����
        			,�����Θb�A��
        			,�������������R�[�h
        			,���������ރR�[�h
        			,���������ރR�[�h
        			,�����o�^����
        			,�쐬�敪
        			,�폜�t���O
        			,���[�U�[ID
        			,�X�V����
        			,�e�Θb���NO
        			,�R�[���o�b�N
        		) VALUES (
        			 KM_�ڋqID
        			,TM_�Θb���NO
        			,TM_��t����
        			,TM_��t�����R�[�h
        			,TM_��t�҃R�[�h
        			,TM_��t����
        			,TM_�Θb��
        			,TM_�e�c�ԍ�
        			,TM_���e
        			,TM_�啪�ރR�[�h
        			,TM_�����ރR�[�h
        			,TM_�����ރR�[�h
        			,TM_�摜�ۑ��p�X
        			,TM_�摜�R�[�h
        			,TM_���͓���
        			,TM_���͕����R�[�h
        			,TM_���͎҃R�[�h
        			,TM_�����Θb�t���O
        			,TM_�����Θb����
        			,TM_�����Θb�A��
        			,TM_�������������R�[�h
        			,TM_���������ރR�[�h
        			,TM_���������ރR�[�h
        			,TM_�����o�^����
        			,TM_�쐬�敪
        			,TM_�폜�t���O
        			,KM_���[�U�[ID
        			,KM_�X�V����
        			,TM_�e�Θb���NO
        			,TM_�R�[���o�b�N
        		);
        INSERT INTO DT_�Θb���C��(
        			 �ڋqID
        			,�Θb���NO
        			,��t����
        			,��t�����R�[�h
        			,��t�҃R�[�h
        			,��t����
        			,�Θb��
        			,�e�c�ԍ�
        			,���e
        			,�啪�ރR�[�h
        			,�����ރR�[�h
        			,�����ރR�[�h
        			,�摜�ۑ��p�X
        			,�摜�R�[�h
        			,���͓���
        			,���͕����R�[�h
        			,���͎҃R�[�h
        			,�����Θb�t���O
        			,�����Θb����
        			,�����Θb�A��
        			,�������������R�[�h
        			,���������ރR�[�h
        			,���������ރR�[�h
        			,�����o�^����
        			,�쐬�敪
        			,�폜�t���O
        			,���[�U�[ID
        			,�X�V����
        			,�e�Θb���NO
        			,�R�[���o�b�N
        		) VALUES (
        			 KM_�ڋqID
        			,TM2_�Θb���NO
        			,TM_��t����
        			,TM_��t�����R�[�h
        			,TM_��t�҃R�[�h
        			,TM_��t����
        			,TM_�Θb��
        			,TM_�e�c�ԍ�
        			,TM2_���e
        			,TM2_�啪�ރR�[�h
        			,TM2_�����ރR�[�h
        			,TM2_�����ރR�[�h
        			,TM_�摜�ۑ��p�X
        			,TM_�摜�R�[�h
        			,TM_���͓���
        			,TM_���͕����R�[�h
        			,TM_���͎҃R�[�h
        			,TM_�����Θb�t���O
        			,TM_�����Θb����
        			,TM_�����Θb�A��
        			,TM_�������������R�[�h
        			,TM_���������ރR�[�h
        			,TM_���������ރR�[�h
        			,TM_�����o�^����
        			,TM2_�쐬�敪
        			,TM_�폜�t���O
        			,KM_���[�U�[ID
        			,KM_�X�V����
        			,TM_�e�Θb���NO
        			,TM_�R�[���o�b�N
        		);
        INSERT INTO DT_�Θb�J�e�S��(
        			 �ڋqID
        			,�Θb���NO
        			,�J�e�S��NO
        			,�T�u�R�[�h
        			,���[�U�[ID
        			,�X�V����
        		) VALUES (
        			 KM_�ڋqID
        			,TM2_�Θb���NO
        			,TK_�J�e�S��NO
        			,TK_�T�u�R�[�h
        			,KM_���[�U�[ID
        			,KM_�X�V����
        		);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK TO sp1;
end; 
/
exit;
