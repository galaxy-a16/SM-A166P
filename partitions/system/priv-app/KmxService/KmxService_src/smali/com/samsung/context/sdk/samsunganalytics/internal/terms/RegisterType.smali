.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

.field public static final enum DELETE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

.field public static final enum DELETE_SENSITIVE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

.field public static final enum SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    const-string v1, "com.sec.android.diagmonagent.sa.terms.DELETE_APP_DATA"

    const-string v2, "DELETE_APP_DATA"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->DELETE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    const-string v2, "com.sec.android.diagmonagent.sa.terms.DELETE_SENSITIVE_APP_DATA"

    const-string v4, "DELETE_SENSITIVE_APP_DATA"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->DELETE_SENSITIVE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    const-string v4, "None"

    const-string v6, "SEND_PREVIOUS_REGISTRATION_INFO"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;
    .locals 1

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->action:Ljava/lang/String;

    return-object p0
.end method
