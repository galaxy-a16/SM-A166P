.class public Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;
.super Ljava/lang/Object;
.source "WmScreenshotController.java"


# instance fields
.field public mDirectoryResolver:Lcom/android/server/wm/WmScreenshotController$DirectoryResolver;

.field public mFilename:I

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance p1, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mDirectoryResolver:Lcom/android/server/wm/WmScreenshotController$DirectoryResolver;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mFilename:I

    return-void
.end method


# virtual methods
.method public final canStringCmdParseToInt([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fputmDisplayId(Lcom/android/server/wm/WmScreenshotController;I)V

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    const/16 v2, 0x7df

    invoke-static {v0, v2}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fputmWindowType(Lcom/android/server/wm/WmScreenshotController;I)V

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {v0, v1}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fputmIgnorePolicy(Lcom/android/server/wm/WmScreenshotController;Z)V

    const/4 v0, 0x1

    aget-object v2, p1, v0

    const-string v3, "Reason : "

    const-string v4, "-------------------"

    const-string v5, "Number_Format_Error"

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v6, v2}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fputmWindowType(Lcom/android/server/wm/WmScreenshotController;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    :goto_0
    const/4 v2, 0x2

    aget-object v2, p1, v2

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v6, v2}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fputmDisplayId(Lcom/android/server/wm/WmScreenshotController;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    :goto_1
    const/4 v2, 0x3

    aget-object p1, p1, v2

    if-eqz p1, :cond_2

    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {p0, v0}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fputmIgnorePolicy(Lcom/android/server/wm/WmScreenshotController;Z)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_2
    return v0
.end method

.method public exec([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->runDefaultCommands(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v3

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "window_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "fullscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "target_window"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->runDefaultCommands(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->getWindowType(Ljava/io/PrintWriter;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->runTakeScreenshotFullScreen(Ljava/io/PrintWriter;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->runTakeScreenshotTargetWindow([Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67694da2 -> :sswitch_2
        0x68f7bbb -> :sswitch_1
        0x72216229 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDirectory(I)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mDirectoryResolver:Lcom/android/server/wm/WmScreenshotController$DirectoryResolver;

    invoke-interface {p0, p1}, Lcom/android/server/wm/WmScreenshotController$DirectoryResolver;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "screenshot"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getWindowType(Ljava/io/PrintWriter;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Focused_Window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window_Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final runDefaultCommands(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "Screenshot commands:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  fullscreen"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Return take sreenshot current window of full screen."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  window_type"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Return the current window type."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  target_window"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Return take sreenshot of target window and save screenshot."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Command: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final runTakeScreenshotFullScreen(Ljava/io/PrintWriter;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final runTakeScreenshotTargetWindow([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 9

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->canStringCmdParseToInt([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {v0}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fgetmDisplayId(Lcom/android/server/wm/WmScreenshotController;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Error : DisplayContent is null"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {v0}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fgetmDisplayId(Lcom/android/server/wm/WmScreenshotController;)I

    move-result v1

    iget-object p1, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {p1}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fgetmWindowType(Lcom/android/server/wm/WmScreenshotController;)I

    move-result v2

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {v4, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x1

    iget-object p1, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {p1}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fgetmIgnorePolicy(Lcom/android/server/wm/WmScreenshotController;)Z

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WmScreenshotController;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZ)Lcom/samsung/android/view/ScreenshotResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/view/ScreenshotResult;->getFailedReason()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/view/ScreenshotResult;->getTargetWindowName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    const-string v0, "Success Screenshot"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window_Name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mFilename:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mFilename:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->setScreenshotEmpty()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mFilename:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/view/ScreenshotResult;->getCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_3
    const-string p1, "Failed to screenshot"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FailedReason:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {p0, v0}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$mfailedReasonToString(Lcom/android/server/wm/WmScreenshotController;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Error"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-------------------"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reason : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Failed create directory"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dir:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final setScreenshotEmpty()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WmScreenshotController$WmScreenshotShellCommand;->mFilename:I

    :cond_0
    return-void
.end method
