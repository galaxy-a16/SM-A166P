.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$3:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$2:Z

    iget-boolean p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->$r8$lambda$hs0KdDRrEsYo08POURDs_QSp7U0(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V

    return-void
.end method
