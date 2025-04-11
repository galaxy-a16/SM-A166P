.class public Lcom/android/server/power/ShutdownDialog$StateDrawing;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# instance fields
.field public imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

.field public soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

.field public final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 535
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    .line 536
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$StateDrawing-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public checkRunning()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->checkRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->checkRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public prepare()V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->checkRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ShutdownDialog"

    const-string v0, "becareful prepare while draw"

    .line 540
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmDrawHandler(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->init()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "ShutdownDialog"

    const-string v1, "!@StateDrawing.start()"

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v0, Lcom/android/server/power/ShutdownDialog$SoundThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownDialog$SoundThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    .line 549
    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$ImageLoadThread-IA;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    .line 550
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 551
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
