.class public Lcom/android/server/am/FreecessHandler$FreecessThread;
.super Ljava/lang/Thread;
.source "FreecessHandler.java"


# instance fields
.field public mPriority:I

.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;I)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 175
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 176
    iput p3, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 181
    iget v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 182
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 183
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-direct {v1, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;-><init>(Lcom/android/server/am/FreecessHandler;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 184
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 187
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->sendSCPMChangedPkgMsgToDBHandler()V

    return-void
.end method
