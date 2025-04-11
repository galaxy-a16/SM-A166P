.class Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
.source "PasswordPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public isChangeRequestedAsUser(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmPolicyCache(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/security/PasswordPolicyCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicyCache;->isChangeRequestedAsUser(I)I

    move-result p0

    return p0
.end method
