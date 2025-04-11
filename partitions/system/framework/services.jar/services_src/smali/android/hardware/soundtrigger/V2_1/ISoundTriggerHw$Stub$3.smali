.class public Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$3;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;


# instance fields
.field public final synthetic this$0:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V
    .locals 0

    .line 1168
    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$3;->this$0:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;

    iput-object p2, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(II)V
    .locals 2

    .line 1171
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1173
    iget-object p1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1174
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
