.class public Lcom/android/server/DeviceIdleController$BinderCaller;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# instance fields
.field public final pid:I

.field public final procName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetpid(Lcom/android/server/DeviceIdleController$BinderCaller;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/DeviceIdleController$BinderCaller;->pid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetprocName(Lcom/android/server/DeviceIdleController$BinderCaller;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderCaller;->procName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/DeviceIdleController;I)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$BinderCaller;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput p2, p0, Lcom/android/server/DeviceIdleController$BinderCaller;->pid:I

    .line 706
    invoke-static {p1, p2}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetProcNameByPid(Lcom/android/server/DeviceIdleController;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$BinderCaller;->procName:Ljava/lang/String;

    return-void
.end method
