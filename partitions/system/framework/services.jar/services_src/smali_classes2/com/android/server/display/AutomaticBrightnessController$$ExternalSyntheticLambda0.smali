.class public final synthetic Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AutomaticBrightnessController;

.field public final synthetic f$1:Landroid/hardware/SensorEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AutomaticBrightnessController;

    iput-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/SensorEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/SensorEvent;

    invoke-static {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController;->$r8$lambda$hI-6G_oZmaIYwvCiGa2R-3lRskY(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorEvent;)V

    return-void
.end method
