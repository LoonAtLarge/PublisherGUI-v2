   M S B A M L   `   `   `  ����O  KHwk5-PublisherGUI-v2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Hwk5_PublisherGUI_v2Hwk5_PublisherGUI_v2  5   	   %    Hwk5_PublisherGUI_v2.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Hwk5_PublisherGUI_v2     5   	     � Title$  Hwk5-PublisherGUI-v2��5   	   $	��450��6&   $	��800��63    � Icon$ bookshelf.png��6?   .��5	      � .+�5
   
   o� $	��Top=�6   .@�5      m� $
��File��6   .@�5      m� -   5        $
��Exit��5      6)   5      m� 5      $��Import��6   .@�5      m� -   5         m�Name$ 
fromJSONMI��5      $��Publisher from JSON...��6/   6O   5      m� 5      $
��Help��6   .@�5      m� -   5        $ aboutMI��5      $��About...��6,   6>   5      5      �� 5   
   -   5         ��Name$ 
booksLstBx��5      $
��Left=�6&   $	��333��6A   $��	10,76,0,0q�6N   $	��Top=�6a   $	��315��6y    �� DisplayMemberPath$ Title��6�   ��6�   ��  �� Mode$ OneWay=�6�   �� 5   
   $��Books��6   $
��Left=�6    $��	10,45,0,0q�6;   $	��Top=�6N   �� 5   
   $��ID��6   $
��Left=�6   $��
330,76,0,0q�68   $	��Top=�6L   �� 5   
   $��Price��6   $
��Left=�6    $��330,184,0,0q�6;   $	��Top=�6P   �� 5   
   $��Title��6   $
��Left=�6    $��330,133,0,0q�6;   $	��Top=�6P   �� 5   
   -   5         ��Name$ titleTxt��5      $
��Left=�6$   $��23��6?   $��387,133,0,0q�6K    �� TextWrapping$
 Wrap=�6`   $	��Top=�6t   $	��395��6�    �� 
IsReadOnly . 	 � ToolTip$	 Selected Book's Title��6�   ��6�   �� *SelectedItem.Title+
 �� ElementName$
 
booksLstBx��6�   �� 5   
   -   5        $ priceTxt��5      $
��Left=�6$   $��23��6?   $��387,187,0,0q�6K   $
 Wrap=�6`   $	��Top=�6t   $	��395��6�    . $	 Selected Book's Price��6�   ��6�   �� *SelectedItem.Price+$
 
booksLstBx��6�   �� 5   
   -   5        $ idTxt��5      $
��Left=�6!   $��23��6<   $��
387,79,0,0q�6H   $
 Wrap=�6\   $	��Top=�6p   $	��395��6�    . $	 Selected Book's unique ID��6�   ��6�   �� *SelectedItem.Id+$
 
booksLstBx��6�   5      5      