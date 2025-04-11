.class public final enum Lcom/android/server/enterprise/plm/InternalEvent;
.super Ljava/lang/Enum;
.source "InternalEvent.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/plm/InternalEvent;

.field public static final enum EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/InternalEvent;


# direct methods
.method public static synthetic $values()[Lcom/android/server/enterprise/plm/InternalEvent;
    .locals 1

    .line 6
    sget-object v0, Lcom/android/server/enterprise/plm/InternalEvent;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/InternalEvent;

    filled-new-array {v0}, [Lcom/android/server/enterprise/plm/InternalEvent;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/android/server/enterprise/plm/InternalEvent;

    const-string v1, "EDM_SERVICE_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/InternalEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/InternalEvent;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/InternalEvent;

    .line 6
    invoke-static {}, Lcom/android/server/enterprise/plm/InternalEvent;->$values()[Lcom/android/server/enterprise/plm/InternalEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/plm/InternalEvent;->$VALUES:[Lcom/android/server/enterprise/plm/InternalEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/plm/InternalEvent;
    .locals 1

    .line 6
    const-class v0, Lcom/android/server/enterprise/plm/InternalEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/plm/InternalEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/plm/InternalEvent;
    .locals 1

    .line 6
    sget-object v0, Lcom/android/server/enterprise/plm/InternalEvent;->$VALUES:[Lcom/android/server/enterprise/plm/InternalEvent;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/plm/InternalEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/plm/InternalEvent;

    return-object v0
.end method
