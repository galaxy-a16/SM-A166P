.class public Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;
.super Ljava/lang/Thread;
.source "MARsDBManager.java"


# instance fields
.field public mPriority:I

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;I)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 128
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 129
    iput p3, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 134
    iget v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 135
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 136
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    new-instance v1, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-direct {v1, p0}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;)V

    invoke-static {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->-$$Nest$fputmMARsDBManagerHandler(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;)V

    .line 137
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
