.class public final synthetic Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService$1;->$r8$lambda$1ETSaSgfk8TlL-WhItG2YwKM5vI(Ljava/util/List;Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result p0

    return p0
.end method
