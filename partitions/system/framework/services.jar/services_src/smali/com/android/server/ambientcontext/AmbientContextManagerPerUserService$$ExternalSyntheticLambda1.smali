.class public final synthetic Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

.field public final synthetic f$1:Landroid/app/ambientcontext/IAmbientContextObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$1:Landroid/app/ambientcontext/IAmbientContextObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$1:Landroid/app/ambientcontext/IAmbientContextObserver;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->$r8$lambda$kRw98n_4xXdsQpKHkvZaXSIAecU(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/app/ambientcontext/IAmbientContextObserver;Ljava/lang/Integer;)V

    return-void
.end method
