.class final Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
.source "ApplicationPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .line 13402
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 13428
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .locals 0

    .line 13406
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mgetApplicationStateEnabledAsUserInMap(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z
    .locals 0

    .line 13413
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isApplicationStopDisabledAsUser(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .line 13421
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
