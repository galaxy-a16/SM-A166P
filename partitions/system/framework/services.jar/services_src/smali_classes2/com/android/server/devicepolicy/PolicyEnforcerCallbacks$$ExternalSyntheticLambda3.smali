.class public final synthetic Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/app/admin/PolicyKey;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->$r8$lambda$-zEkQfrCw_373vb9MgXirr-ntDw(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V

    return-void
.end method
