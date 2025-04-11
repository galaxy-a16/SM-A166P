.class final enum Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
.super Ljava/lang/Enum;
.source "KioskModeService.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum ACTION_MEMO:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;


# instance fields
.field private final option:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->ACTION_MEMO:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const-string v1, "ACTION_MEMO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->ACTION_MEMO:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const-string v1, "AIR_COMMAND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-static {}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->$values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->$VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->option:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->$VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    return-object v0
.end method
