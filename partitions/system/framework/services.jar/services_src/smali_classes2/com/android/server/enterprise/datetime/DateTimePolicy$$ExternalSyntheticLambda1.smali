.class public final synthetic Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

.field public final synthetic f$1:Landroid/app/admin/DevicePolicyManager;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;->f$1:Landroid/app/admin/DevicePolicyManager;

    iput-boolean p3, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;->f$3:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;->f$1:Landroid/app/admin/DevicePolicyManager;

    iget-boolean v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;->f$2:Z

    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;->f$3:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->$r8$lambda$sjTOGSIpP_tGz6abz8lcBkrdJ18(Lcom/android/server/enterprise/datetime/DateTimePolicy;Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
