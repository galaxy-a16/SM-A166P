.class Lcom/android/server/power/hint/HintManagerService$Injector;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .locals 0

    new-instance p0, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;-><init>()V

    return-object p0
.end method
