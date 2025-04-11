.class public Lcom/android/server/locksettings/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "LockSettingsStrongAuth.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/os/Looper;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 655
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 672
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleRefreshStrongAuthTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_0

    .line 684
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleScheduleNonStrongBiometricIdleTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_0

    .line 681
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleStrongBiometricUnlock(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_0

    .line 678
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleScheduleNonStrongBiometricTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_0

    .line 675
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleNoLongerRequireStrongAuth(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V

    goto :goto_0

    .line 669
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleScheduleStrongAuthTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_0

    .line 666
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleRemoveUser(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_0

    .line 660
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleRemoveStrongAuthTracker(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_0

    .line 657
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleAddStrongAuthTracker(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_0

    .line 663
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->-$$Nest$mhandleRequireStrongAuth(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
