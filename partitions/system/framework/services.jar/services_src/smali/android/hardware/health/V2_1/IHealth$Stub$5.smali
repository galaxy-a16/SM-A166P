.class public Landroid/hardware/health/V2_1/IHealth$Stub$5;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;


# instance fields
.field public final synthetic this$0:Landroid/hardware/health/V2_1/IHealth$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V
    .locals 0

    .line 976
    iput-object p1, p0, Landroid/hardware/health/V2_1/IHealth$Stub$5;->this$0:Landroid/hardware/health/V2_1/IHealth$Stub;

    iput-object p2, p0, Landroid/hardware/health/V2_1/IHealth$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(IJ)V
    .locals 2

    .line 979
    iget-object v0, p0, Landroid/hardware/health/V2_1/IHealth$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 980
    iget-object v0, p0, Landroid/hardware/health/V2_1/IHealth$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 981
    iget-object p1, p0, Landroid/hardware/health/V2_1/IHealth$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 982
    iget-object p0, p0, Landroid/hardware/health/V2_1/IHealth$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
