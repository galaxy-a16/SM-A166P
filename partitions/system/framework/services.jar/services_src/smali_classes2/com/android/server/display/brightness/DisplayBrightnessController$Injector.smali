.class Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;
.super Ljava/lang/Object;
.source "DisplayBrightnessController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayBrightnessStrategySelector(Landroid/content/Context;I)Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;
    .locals 1

    .line 469
    new-instance p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;-><init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;I)V

    return-object p0
.end method
