.class public Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;
.super Ljava/lang/Object;
.source "ISehBiometricsFace.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;


# instance fields
.field public final synthetic this$0:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;Landroid/os/HwParcel;)V
    .locals 0

    .line 1630
    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->this$0:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(II)V
    .locals 2

    .line 1633
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1634
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1635
    iget-object p1, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1636
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
