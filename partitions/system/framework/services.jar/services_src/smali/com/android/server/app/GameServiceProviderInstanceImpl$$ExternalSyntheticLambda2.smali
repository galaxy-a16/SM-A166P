.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$4:Lcom/android/server/app/GameSessionRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl;

    iput p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/infra/AndroidFuture;

    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/app/GameSessionRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/infra/AndroidFuture;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/app/GameSessionRecord;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->$r8$lambda$B1JoGwqiAg5WKmkh03u0xsC48xY(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V

    return-void
.end method
