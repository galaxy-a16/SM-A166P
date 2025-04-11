.class public abstract Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;
.super Ljava/lang/Object;
.source "BatteryController.java"


# instance fields
.field public final mObserver:Landroid/os/UEventObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmObserver(Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;)Landroid/os/UEventObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;->mObserver:Landroid/os/UEventObserver;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    new-instance v0, Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener$1;-><init>(Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;)V

    iput-object v0, p0, Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;->mObserver:Landroid/os/UEventObserver;

    return-void
.end method


# virtual methods
.method public abstract onBatteryUEvent(J)V
.end method
