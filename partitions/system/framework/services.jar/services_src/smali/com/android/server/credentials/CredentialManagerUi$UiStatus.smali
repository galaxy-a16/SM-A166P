.class final enum Lcom/android/server/credentials/CredentialManagerUi$UiStatus;
.super Ljava/lang/Enum;
.source "CredentialManagerUi.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public static final enum IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public static final enum NOT_STARTED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public static final enum TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public static final enum USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;


# direct methods
.method public static synthetic $values()[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;
    .locals 4

    .line 59
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    sget-object v1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    sget-object v2, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->NOT_STARTED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    sget-object v3, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 61
    new-instance v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    const-string v1, "USER_INTERACTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 62
    new-instance v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->NOT_STARTED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    new-instance v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    const-string v1, "TERMINATED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 59
    invoke-static {}, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->$values()[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->$VALUES:[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/CredentialManagerUi$UiStatus;
    .locals 1

    .line 59
    const-class v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->$VALUES:[Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    invoke-virtual {v0}, [Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    return-object v0
.end method
