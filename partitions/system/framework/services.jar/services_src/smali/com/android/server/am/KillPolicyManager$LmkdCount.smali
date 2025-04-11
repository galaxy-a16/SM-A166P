.class public final enum Lcom/android/server/am/KillPolicyManager$LmkdCount;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum ARCHIVED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum BACKUP_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum BORA_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum CACHED_APP_MAX_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum CACHED_APP_MIN_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum FOREGROUND_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum HEAVY_WEIGHT_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum HOME_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PERCEPTIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PERCEPTIBLE_LOW_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PERCEPTIBLE_MEDIUM_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PICKED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PREVIOUS_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum SEEDBED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum SERVICE_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum SERVICE_B_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum VISIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;


# instance fields
.field private mADJ:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;
    .locals 17

    sget-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->CACHED_APP_MAX_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v1, Lcom/android/server/am/KillPolicyManager$LmkdCount;->CACHED_APP_MIN_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdCount;->SEEDBED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v3, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PICKED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v4, Lcom/android/server/am/KillPolicyManager$LmkdCount;->ARCHIVED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdCount;->SERVICE_B_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v6, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PREVIOUS_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v7, Lcom/android/server/am/KillPolicyManager$LmkdCount;->HOME_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v8, Lcom/android/server/am/KillPolicyManager$LmkdCount;->SERVICE_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v9, Lcom/android/server/am/KillPolicyManager$LmkdCount;->HEAVY_WEIGHT_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v10, Lcom/android/server/am/KillPolicyManager$LmkdCount;->BORA_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v11, Lcom/android/server/am/KillPolicyManager$LmkdCount;->BACKUP_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v12, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PERCEPTIBLE_LOW_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v13, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PERCEPTIBLE_MEDIUM_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v14, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PERCEPTIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v15, Lcom/android/server/am/KillPolicyManager$LmkdCount;->VISIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    sget-object v16, Lcom/android/server/am/KillPolicyManager$LmkdCount;->FOREGROUND_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    filled-new-array/range {v0 .. v16}, [Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0x3e7

    const-string v2, "CACHED_APP_MAX_ADJ"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->CACHED_APP_MAX_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/4 v1, 0x1

    const/16 v2, 0x384

    const-string v4, "CACHED_APP_MIN_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->CACHED_APP_MIN_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/4 v1, 0x2

    const/16 v2, 0x35c

    const-string v4, "SEEDBED_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->SEEDBED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/4 v1, 0x3

    const/16 v2, 0x352

    const-string v4, "PICKED_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PICKED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/4 v1, 0x4

    const/16 v2, 0x33e

    const-string v4, "ARCHIVED_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->ARCHIVED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/4 v1, 0x5

    const/16 v2, 0x320

    const-string v4, "SERVICE_B_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->SERVICE_B_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/4 v1, 0x6

    const/16 v2, 0x2bc

    const-string v4, "PREVIOUS_APP_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PREVIOUS_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/4 v1, 0x7

    const/16 v2, 0x258

    const-string v4, "HOME_APP_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->HOME_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0x8

    const/16 v2, 0x1f4

    const-string v4, "SERVICE_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->SERVICE_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0x9

    const/16 v2, 0x190

    const-string v4, "HEAVY_WEIGHT_APP_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->HEAVY_WEIGHT_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0xa

    const/16 v2, 0x15e

    const-string v4, "BORA_APP_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->BORA_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0xb

    const/16 v2, 0x12c

    const-string v4, "BACKUP_APP_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->BACKUP_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0xc

    const/16 v2, 0xfa

    const-string v4, "PERCEPTIBLE_LOW_APP_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PERCEPTIBLE_LOW_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0xd

    const/16 v2, 0xe1

    const-string v4, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PERCEPTIBLE_MEDIUM_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0xe

    const/16 v2, 0xc8

    const-string v4, "PERCEPTIBLE_APP_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PERCEPTIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0xf

    const/16 v2, 0x64

    const-string v4, "VISIBLE_APP_ADJ"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->VISIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v1, "FOREGROUND_APP_ADJ"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->FOREGROUND_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->$values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->mADJ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$LmkdCount;
    .locals 1

    const-class v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;
    .locals 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$LmkdCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$LmkdCount;

    return-object v0
.end method


# virtual methods
.method public getADJ()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->mADJ:I

    return p0
.end method
