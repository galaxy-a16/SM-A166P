.class public Landroid/hardware/health/V2_0/IHealth$Stub$9;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;


# instance fields
.field public final synthetic this$0:Landroid/hardware/health/V2_0/IHealth$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V
    .locals 0

    .line 1102
    iput-object p1, p0, Landroid/hardware/health/V2_0/IHealth$Stub$9;->this$0:Landroid/hardware/health/V2_0/IHealth$Stub;

    iput-object p2, p0, Landroid/hardware/health/V2_0/IHealth$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/health/V2_0/HealthInfo;)V
    .locals 2

    .line 1105
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1106
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1107
    iget-object p1, p0, Landroid/hardware/health/V2_0/IHealth$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, p1}, Landroid/hardware/health/V2_0/HealthInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1108
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
