.class public final synthetic Lcom/android/server/pm/PackageMetrics$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageMetrics$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageMetrics;->$r8$lambda$4AvmYIPsOO4b1i7S2-c2Ut6eHo4(Ljava/util/concurrent/atomic/AtomicLong;Ljava/nio/file/Path;)V

    return-void
.end method
