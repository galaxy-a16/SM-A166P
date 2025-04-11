.class public final synthetic Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/PowerManagerService$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/PowerManagerService$1;

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService$1;->$r8$lambda$gMGwzzV4cc7VOd2Qo5C4XVxBq7U(Lcom/android/server/power/PowerManagerService$1;Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method
