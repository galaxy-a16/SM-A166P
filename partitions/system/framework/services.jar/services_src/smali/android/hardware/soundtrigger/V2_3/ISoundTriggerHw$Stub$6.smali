.class public Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getProperties_2_3Callback;


# instance fields
.field public final synthetic this$0:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;->this$0:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;

    iput-object p2, p0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/soundtrigger/V2_3/Properties;)V
    .locals 2

    .line 1145
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1146
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1147
    iget-object p1, p0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, p1}, Landroid/hardware/soundtrigger/V2_3/Properties;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1148
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
