.class public Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioPoliciesBluetoothRouteController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string p2, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string p2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string p2, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string p2, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string p2, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-static {p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->-$$Nest$mupdateBluetoothRoutes(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x693eab85 -> :sswitch_5
        -0x2caca392 -> :sswitch_4
        -0x2486726f -> :sswitch_3
        0x1d0d7e43 -> :sswitch_2
        0x461dab18 -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
