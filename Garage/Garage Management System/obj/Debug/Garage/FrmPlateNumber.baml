   M S B A M L   `   `   `  ����  Garage Management System4    .Garage_Management_System.Garage.FrmPlateNumber   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          N� Title$  FrmPlateNumber��5         MaterialDesignBody#���   5   	    N� 
Background 5
   	   Z� .��5      � $	��Top=�6   .+�5   
   #  MaterialDesignThemes.Wpf.Card  $��20,10,10,20q�5      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�5        _system_bg_color#��[ 5         UniformCornerRadius$ 15Q�5      .��5      )  #MaterialDesignThemes.Wpf.DialogHost  -   5          Name$ frmregister��5   (      CloseOnClickAway . .��5      �  � RowDefinitions 5      �� 5      $	��500 �6(    � ColumnDefinitions 5      �� 5      $	��360 �6+   �� 5      $	��200 �6+   .+�5#      � $��0��5$      $��0��5%      $
��Left=�5&      .+�5'      �� $	��350��5(      $��	10,10,0,0q�5)      $
��Left=�5*      .+�5,      �� $��10,5,0,5q�5-   !   $��Center=�5.   !     
_text_font#��[ 5/   !   $��22(�50   !   $��SemiBold"�51   !     top_menu_brush#��[ 52   !   $��Register Plate Number ��53   !   �� 54      -   5         ��Name$ txtplate_id��55   !   $	��300��56   !   $��25,10,25.4,0q�57   !     
Hint_brush)  #MaterialDesignThemes.Wpf.HintAssist	   
Foreground#	 [ 58   !   
   Hint$
 Plate ID��59   !     input_brush#��[ 5:   !   #��[ 5;   !   $��14(�5<   !     	txt_color#��[ 5=   !    % !MaterialDesignFloatingHintTextBox#��[ 5>   !   �� 5?      -   5        $ txtPlateNumber��5@   !   $	��300��5A   !   $��25,10,25.4,0q�5B   !   #	 [ 5C   !   $
 Plate Number��5D   !   #��[ 5E   !   #��[ 5F   !   $��14(�5G   !   #��[ 5H   !   #��[ 5I   !   �� 5K      -   5         ��Name$ cboType��5L   !   $	��300��5M   !   $��0,20,0,0q�5N   !   #	 [ 5O   !   $
 
Plate Type��5P   !   #��[ 5Q   !     _Kh_font#��[ 5R   !   $��14(�5S   !   #��[ 5T   !    �� 
IsEditable .  �� IsTextSearchEnabled .  &	 "MaterialDesignFloatingHintComboBox#��[	 5W   !   �� 5X      -   5        $ cboInactive��5Y   !   $	��300��5Z   !   $��0,20,0,0q�5[   !   #	 [ 5\   !   $
 Inactive��5]   !   #��[ 5^   !   #��[ 5_   !   $��14(�5`   !   #��[ 5a   !    .  . #��[	 5d   !   6]   �� 5g      -   5        $ 	txtremark��5h   !   $	��300��5i   !   $	��120��5j   !   $��25,10,25.4,0q�5k   !   #	 [ 5l   !   $
 Remark��5m   !    �� AcceptsReturn . #��[ 5o   !   #��[ 5p   !   $��14(�5q   !    
 
_btn_color#��[
 5r   !   #��[ 5s   !    �� TextWrapping$
 Wrap=�5t   !   " �� VerticalScrollBarVisibility$ Visible=�5u   !   5w      5x      � 5{      $��0��5|      $��2��5}      $
��Left=�5~      .+�5      �� $	��180��5�      $��0,15,0,0q�5�      $��Right=�5�      .+�5�      '  !MaterialDesignThemes.Wpf.PopupBox  $��25��5�   !   $��5,5,5,0q�5�   !   $��Right=�5�   !      PlacementMode$ BottomAndAlignRightEdges=�5�   !      	StaysOpen .     PopupContent. 5�   "   �� .+�5�   &   m� -   5         m�Name$ 
View_draft��5�   )     _top_menu_font#��[ 5�   )   $��13(�5�   )   $��Plate Number��5�   )    m� Icon 5�   *   '  !MaterialDesignThemes.Wpf.PackIcon  5�   .      Kind$ Paper=�6F   5�   '   m� 5�   &   -	   5        $ view_request��5�   )   #��[ 5�   )   $��13(�5�   )   $3��-បញ្ជីសំណើផ្សេងៗ��5�   )    5�   *     5�   .   $ History=�6F   5�   '   5�   #   5�      �� 5�      -
   5         ��Name$ btnNew��5�   !   $	��150��5�   !   $��45��5�   !   $��	10,55,0,0q�5�   !   $
��Left=�5�   !   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5�   !   $ Depth0=�5�   !   #��[
 5�   !   $	��New��5�   !   $��14(�5�   !    ! MaterialDesignFlatMidBgButton#��[ 5�   !   6X   �� 5�      -   5        $ btnSave��5�   !   $	��150��5�   !   $��45��5�   !   $��	10,10,0,0q�5�   !   $
��Left=�5�   !   $ 10��5�   !   $ Depth0=�5�   !   #��[
 5�   !   $
��Save��5�   !   $��15(�5�   !   #��[ 5�   !   6X   �� 5�      -   5        $ btnEdit��5�   !   $	��150��5�   !   $��45��5�   !   $��	10,10,0,0q�5�   !   $
��Left=�5�   !   $ 10��5�   !   $ Depth0=�5�   !   #��[
 5�   !   $
��Edit��5�   !   $��14(�5�   !   #��[ 5�   !   6X   5�      5�      5�      5�      5�      5�      5�      