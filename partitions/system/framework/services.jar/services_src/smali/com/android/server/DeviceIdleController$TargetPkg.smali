.class public Lcom/android/server/DeviceIdleController$TargetPkg;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# instance fields
.field public final pkgName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;

.field public final uid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetpkgName(Lcom/android/server/DeviceIdleController$TargetPkg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetuid(Lcom/android/server/DeviceIdleController$TargetPkg;)I
    .locals 0

    iget p0, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->uid:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/DeviceIdleController;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->uid:I

    iput-object p3, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->pkgName:Ljava/lang/String;

    return-void
.end method
