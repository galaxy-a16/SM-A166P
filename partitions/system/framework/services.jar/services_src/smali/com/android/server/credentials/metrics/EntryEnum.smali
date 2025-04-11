.class public final enum Lcom/android/server/credentials/metrics/EntryEnum;
.super Ljava/lang/Enum;
.source "EntryEnum.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final sKeyToEntryCode:Ljava/util/Map;


# instance fields
.field private final mInnerMetricCode:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/credentials/metrics/EntryEnum;
    .locals 5

    .line 36
    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    sget-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    sget-object v3, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    sget-object v4, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/credentials/metrics/EntryEnum;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 38
    new-instance v0, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string v1, "ACTION_ENTRY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 39
    new-instance v1, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string v2, "CREDENTIAL_ENTRY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 40
    new-instance v2, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string v3, "REMOTE_ENTRY"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 41
    new-instance v3, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string v4, "AUTHENTICATION_ENTRY"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, v5}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 36
    invoke-static {}, Lcom/android/server/credentials/metrics/EntryEnum;->$values()[Lcom/android/server/credentials/metrics/EntryEnum;

    move-result-object v4

    sput-object v4, Lcom/android/server/credentials/metrics/EntryEnum;->$VALUES:[Lcom/android/server/credentials/metrics/EntryEnum;

    .line 49
    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    iget v0, v0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "action_key"

    invoke-direct {v4, v5, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    iget v3, v3, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "authentication_action_key"

    invoke-direct {v0, v5, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    iget v2, v2, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v5, "remote_entry_key"

    invoke-direct {v3, v5, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    iget v5, v1, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "credential_key"

    invoke-direct {v2, v6, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    iget v1, v1, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v6, "save_entry_key"

    invoke-direct {v5, v6, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v0, v3, v2, v5}, [Ljava/util/Map$Entry;

    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->sKeyToEntryCode:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    return-void
.end method

.method public static getMetricCodeFromString(Ljava/lang/String;)I
    .locals 2

    .line 83
    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->sKeyToEntryCode:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "EntryEnum"

    const-string v0, "Attempted to use an unsupported string key entry type"

    .line 84
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object p0, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    iget p0, p0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    return p0

    .line 87
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/EntryEnum;
    .locals 1

    .line 36
    const-class v0, Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/metrics/EntryEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/EntryEnum;
    .locals 1

    .line 36
    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->$VALUES:[Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/EntryEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/metrics/EntryEnum;

    return-object v0
.end method


# virtual methods
.method public getMetricCode()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    return p0
.end method
