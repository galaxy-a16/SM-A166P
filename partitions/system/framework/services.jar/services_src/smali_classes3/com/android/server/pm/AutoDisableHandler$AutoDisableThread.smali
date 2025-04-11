.class public Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;
.super Ljava/lang/Thread;
.source "AutoDisableHandler.java"


# instance fields
.field public mPriority:I

.field public final synthetic this$0:Lcom/android/server/pm/AutoDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AutoDisableHandler;Ljava/lang/String;I)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    .line 59
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 60
    iput p3, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget v0, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 66
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 67
    iget-object v0, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    new-instance v1, Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    iget-object p0, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AutoDisableHandler$ADHandler;-><init>(Lcom/android/server/pm/AutoDisableHandler;)V

    iput-object v1, v0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    .line 68
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
