.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->$r8$lambda$OhekULAyyHoiwN5Io5hbjCneVBU(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method
