.class public Lcom/android/server/display/AutomaticBrightnessController$Injector;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClock()Lcom/android/server/display/AutomaticBrightnessController$Clock;
    .locals 0

    .line 2587
    new-instance p0, Lcom/android/server/display/AutomaticBrightnessController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public getBackgroundThreadHandler()Landroid/os/Handler;
    .locals 0

    .line 2583
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
