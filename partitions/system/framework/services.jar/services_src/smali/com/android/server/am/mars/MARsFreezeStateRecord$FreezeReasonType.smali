.class public final enum Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
.super Ljava/lang/Enum;
.source "MARsFreezeStateRecord.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

.field public static final enum FREEZE_REASON_LCDOFF:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

.field public static final enum FREEZE_REASON_LCDON:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

.field public static final enum FREEZE_REASON_OLAF:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

.field public static final enum FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;


# instance fields
.field private final freezeType:Ljava/lang/String;

.field private final typeNum:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
    .locals 4

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    sget-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_REASON_LCDON:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    sget-object v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_REASON_LCDOFF:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    sget-object v3, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_REASON_OLAF:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Total"

    const-string v4, "FREEZE_TOTAL"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Bg"

    const-string v4, "FREEZE_REASON_LCDON"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_REASON_LCDON:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LEV"

    const-string v4, "FREEZE_REASON_LCDOFF"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_REASON_LCDOFF:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "OLAF"

    const-string v4, "FREEZE_REASON_OLAF"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_REASON_OLAF:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->$values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->typeNum:I

    iput-object p4, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->freezeType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
    .locals 1

    const-class v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    invoke-virtual {v0}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    return-object v0
.end method


# virtual methods
.method public getTypeNum()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->typeNum:I

    return p0
.end method
