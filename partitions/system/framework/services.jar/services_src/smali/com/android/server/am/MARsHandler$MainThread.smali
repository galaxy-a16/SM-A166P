.class public Lcom/android/server/am/MARsHandler$MainThread;
.super Ljava/lang/Thread;
.source "MARsHandler.java"


# instance fields
.field public mPriority:I

.field public final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    .line 106
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 107
    iput p3, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 113
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 114
    iget-object v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    new-instance v1, Lcom/android/server/am/MARsHandler$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-direct {v1, p0}, Lcom/android/server/am/MARsHandler$MainHandler;-><init>(Lcom/android/server/am/MARsHandler;)V

    iput-object v1, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 115
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
