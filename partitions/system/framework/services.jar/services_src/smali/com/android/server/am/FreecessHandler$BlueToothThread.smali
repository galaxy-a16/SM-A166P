.class public Lcom/android/server/am/FreecessHandler$BlueToothThread;
.super Ljava/lang/Thread;
.source "FreecessHandler.java"


# instance fields
.field public mBtPriority:I

.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 484
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 485
    iput p1, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->mBtPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 490
    iget v0, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->mBtPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 491
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 492
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->this$0:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-direct {v1, p0}, Lcom/android/server/am/FreecessHandler$BluetoothHandler;-><init>(Lcom/android/server/am/FreecessHandler;)V

    invoke-static {v0, v1}, Lcom/android/server/am/FreecessHandler;->-$$Nest$fputmBluetoothHandler(Lcom/android/server/am/FreecessHandler;Lcom/android/server/am/FreecessHandler$BluetoothHandler;)V

    .line 493
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
