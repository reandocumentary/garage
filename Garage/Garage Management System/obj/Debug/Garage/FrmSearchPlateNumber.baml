   M S B A M L   `   `   `  ����  Garage Management System:    4Garage_Management_System.Garage.FrmSearchPlateNumber   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -   5          � 
ResizeMode$  NoResize=�5   	      MaterialDesignBody#���   5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � Title$ Search��5   	   $	��450��6   $	��800��6%   ��5   	   Z� .��5      � $	��Top=�6   .+�5   
   #  MaterialDesignThemes.Wpf.Card  +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�5        _system_bg_color#��[ 5         UniformCornerRadius$ 0Q�5      .��5      )  #MaterialDesignThemes.Wpf.DialogHost  -   5          Name$ frmregister��5   (      CloseOnClickAway . .��5      �  � RowDefinitions 5      �� 5      $��66 �6(   �� 5      $	��500 �6(    � ColumnDefinitions 5      �� 5      $	��900 �6+   .+�5      � $��0��5      $��0��5      $
��Left=�5       .+�5!      �� $	��380��5"      $��5,5,0,0q�5#      $
��Left=�5$      .+�5&      �� -   5        	 ��Name$	 	txtSearch��5'   !   $	��300��5(   !   $��	15,10,0,0q�5)   !   $
��Left=�5*   !     
Hint_brush)  #MaterialDesignThemes.Wpf.HintAssist
   
Foreground#
 [ 5+   !      Hint$ Search��5,   !     input_brush#��[ 5-   !     
_text_font#��[ 5.   !   $��14(�5/   !     
_btn_color#��[ 50   !    % !MaterialDesignFloatingHintTextBox#��[ 51   !   53      54      � 56      $��1��57      $��0��58      $
��Left=�59      .+�5:      �� $	��777��5;      $
��auto��5<      $��5,15,0,0q�5=      $
��Left=�5>      .+�5?      ]� $��Stretch=�6(   .+�5@   "   R� $	��Top=�6+   �� 5A   "   -   5         ��Name$ 	btnSearch��5B   %   $	��100��5C   %   $��33��5D   %   $��22,-77,20,5q�5E   %     btnSearchColor#��[ 5F   %   $��Search��5G   %   $��Bottom=�5H   %   6=   5I      &   System.Windows.Controls.DataGrid  5L      -   5        $��dgData��5M   !   $	��777��5N   !   $	��450��5O   !   $��10q�5P   !      AutoGenerateColumns .     CanUserReorderColumns .  !   EnableColumnVirtualization .    EnableRowVirtualization .    GridLinesVisibility$ 
Horizontal=�5U       -  'System.Windows.Input.KeyboardNavigation   TabNavigation$
 Once=�5W          SelectionUnit$ FullRow=�5X        %� VirtualizationMode$ 	Recycling=�5Y        � Cursor$
 Hand��5\   !   #��[ 5]   !   $��16(�5^   !      HeadersVisibility$	 All=�5_   !   $   HorizontalScrollBarVisibility$
 Auto=�5`   !      
IsReadOnly . #��[ 5b   "      SelectionMode$ Extended=�5c   !   ��5V       �� *EmployeesCollectionView+ � ContextMenu 5e   "   �� 5f   &   -   5         ��Name$ 
Con_Action��5h   )   $��1,1,1,1q�5i   )   $	��Top=�5j   )   
���  ��  _Context#��[ 5l   )   .@�5m   *   m� -   5         m�Name$ 	Con_Views��5n   -    	 _Kh_font#��[	 5o   -   $��13(�5p   -   $��Review��5q   -    m� Icon 5r   .   '  !MaterialDesignThemes.Wpf.PackIcon  5s   2      Kind$ ViewAgendaOutline=�6J   5u   +   5w   '      Columns 5z   "   0  *System.Windows.Controls.DataGridTextColumn  5|   &   ,	  &System.Windows.Controls.DataGridColumn  	  Header$  ID��6V   1
  +System.Windows.Controls.DataGridBoundColumn! 
  Binding! 69   �� *
Plate_ID+6V     5}   &   $  PlateNumber��6T   ! 69   �� *Titile+6T     5~   &   $
  Type��6U   ! 69   �� *	Type_ID+6U     5   &   $  Inputter��6V   ! 69   �� *
inputter+6V     5�   &   $  Last update��6W   ! 69   �� *	Responder+6W   5�      5�      5�      5�      5�      5�      5�      5�      