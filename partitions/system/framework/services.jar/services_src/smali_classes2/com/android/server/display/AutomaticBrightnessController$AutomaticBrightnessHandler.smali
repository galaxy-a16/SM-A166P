.class public final Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V
    .locals 1

    .line 2243
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2244
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2249
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2280
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mhandleSensorTimeout(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_0

    .line 2275
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmPausedShortTermModel(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->-$$Nest$minvalidate(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)V

    goto :goto_0

    .line 2251
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateAutoBrightness(Lcom/android/server/display/AutomaticBrightnessController;ZZ)V

    goto :goto_0

    .line 2271
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateForegroundAppSync(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_0

    .line 2267
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateForegroundApp(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_0

    .line 2263
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmShortTermModel(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->-$$Nest$minvalidate(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)V

    goto :goto_0

    .line 2259
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mcollectBrightnessAdjustmentSample(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_0

    .line 2255
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateAmbientLux(Lcom/android/server/display/AutomaticBrightnessController;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
