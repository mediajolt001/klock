GDPC                                                                                       	   T   res://.godot/exported/133200997/export-0198285a53ebcb7d8a4193ca169e8695-clock.scn   �      U      ��-B�.���P��    ,   res://.godot/global_script_class_cache.cfg  P             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex0      �      �Yz=������������       res://.godot/uid_cache.bin  0#      :       I�w`Ē�&�1*��K�{       res://clock.gd          �      P���V?�R�>�;�	       res://clock.tscn.remap  �      b       �HY�Oܱ�o�D�K�       res://icon.svg  p      �      C��=U���^Qu��U3       res://icon.svg.import         �       ��J���
Ƚ�DH6�]       res://project.binaryp#      J      � �9Ud4�FE+7���    extends Node2D

#const SYSTEM_TIME := 0
#const RANDOM_TIME := 1
enum StartTimeMode { SYSTEM_TIME, RANDOM_TIME, FIXED_TIME}

## what time to use for the starting time of the clock
@export var start_time := StartTimeMode.SYSTEM_TIME
@export_group("Fixed Start Time")
@export_range(0, 11) var start_hour := 0
@export_range(0, 59) var start_minute := 0
@export_range(0, 59) var start_second := 0
var seconds:= 0.0
@onready var second_arm := $SecondArm as Node2D
@onready var minute_arm := $MinuteArm as Node2D
@onready var hour_arm := $HourArm as Node2D

func _ready() -> void:
	if start_time == StartTimeMode.RANDOM_TIME:
		seconds = randf_range(0.0, 43200.0)
	else:
		if start_time != StartTimeMode.FIXED_TIME:
			var current_time := Time.get_time_dict_from_system()
			seconds = float(
				current_time.second +
				current_time.minute * 60 +
				current_time.hour * 3600
			)
		if start_time != StartTimeMode.SYSTEM_TIME:
			seconds = start_second + start_minute * 60 + start_second *3600 

func _process(delta: float) -> void:
	seconds += delta
	second_arm.rotation = fmod(seconds, 60.0) * TAU / 60.0
	minute_arm.rotation = fmod(seconds / 60.0, 60.0) * TAU / 60.0
	hour_arm.rotation = fmod(seconds / 3600.0, 12.0) * TAU / 12.0
    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    interpolation_mode    interpolation_color_space    offsets    colors    script 	   gradient    width    height    use_hdr    fill 
   fill_from    fill_to    repeat 	   _bundled       Script    res://clock.gd ��������      local://Gradient_r62kh �          local://GradientTexture2D_0dj2b V         local://PackedScene_tcdge �      	   Gradient       !      H�z?  �?   $        �?  �?  �?  �?  �?  �?  �?             GradientTexture2D                          	                     
      ?   ?   
     �?   ?         PackedScene          	         names "   +      Control    layout_mode    anchors_preset    anchor_left    anchor_top    anchor_right    anchor_bottom    offset_left    offset_top    offset_right    offset_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    size_flags_vertical    Clock 	   position    scale    script    Node2D    Face    texture 	   Sprite2D    Hour0    color    offset    polygon 
   Polygon2D    Hour1 	   rotation    Hour2    Hour3    Hour4    Hour5    Hour6    Hour7    Hour8    Hour9    Hour10    Hour11    HourArm 
   MinuteArm 
   SecondArm    	   variants    #                     ?     ��     �A            
   �{,�{,
   �(@�(@                      ��?    ���>  �?
         ��%         ����   A���       A   �
?                 �?   �
�?   ��?   �
@   &�'@   �I@   y�j@   �
�@   �˖@   ;��@   �N�@
   穀>~oC�
   `��>�sA%      F����۰@t�vA�۰@���G��
   �>moC�
     �?[��?             �?  �?
   �>+�A%      ' ��XJ���{AXJ�V��G2��%      y@�D�0?�@D�0?V������      node_count             nodes       ��������        ����                                                    	      
                                                ����                  	                    ����      
                    ����                                      ����                                            ����                                            ����                                             ����                                         !   ����                                         "   ����                                         #   ����                                         $   ����                                         %   ����                                         &   ����                                         '   ����                                         (   ����                                         )   ����                               !                 *   ����                               "             conn_count              conns               node_paths              editable_instances              version             RSRC           GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bkc7vai4jjffh"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                [remap]

path="res://.godot/exported/133200997/export-0198285a53ebcb7d8a4193ca169e8695-clock.scn"
              list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             �r��o��
   res://clock.tscn=f����*   res://icon.svg      ECFG      application/config/name         Clock      application/run/main_scene         res://clock.tscn   application/config/features   "         4.2    Mobile     application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      8     display/window/size/mode            display/window/size/resizable             display/window/stretch/mode         canvas_items   display/window/stretch/aspect         expand  !   filesystem/import/blender/enabled          #   rendering/renderer/rendering_method         gl_compatibility4   rendering/textures/vram_compression/import_etc2_astc         2   rendering/environment/defaults/default_clear_color      ���>���>���>  �?'   rendering/anti_aliasing/quality/msaa_2d               