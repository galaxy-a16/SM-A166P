.class public final enum Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
.super Ljava/lang/Enum;
.source "ActivationMonitor.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .locals 6

    .line 72
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v3, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v4, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v5, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 13

    .line 73
    new-instance v6, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v1, "ELM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ELM"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 74
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v8, "KLM"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const-string v11, "KLM"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 75
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v2, "DO"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "DO"

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 76
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v8, "PO"

    const/4 v9, 0x3

    const/4 v10, 0x4

    const-string v11, "PO"

    const/4 v12, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 77
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v2, "KME"

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v5, "KES"

    const/4 v6, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 78
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v8, "B2C"

    const/4 v9, 0x5

    const/4 v10, 0x6

    const-string v11, "B2C"

    const/4 v12, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 72
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    .line 87
    iput-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    .line 88
    iput p5, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .locals 1

    .line 72
    const-class v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .locals 1

    .line 72
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    return p0
.end method
