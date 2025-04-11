.class final enum Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
.super Ljava/lang/Enum;
.source "DisplayManagerService.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

.field public static final enum DOZE:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

.field public static final enum DOZE_SUSPEND:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

.field public static final enum OFF:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

.field public static final enum ON:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

.field public static final enum ON_SUSPEND:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

.field public static final enum VR:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;


# instance fields
.field private final displayState:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
    .locals 6

    sget-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->ON:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    sget-object v1, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->ON_SUSPEND:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    sget-object v2, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->VR:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    sget-object v3, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->DOZE:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    sget-object v4, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->DOZE_SUSPEND:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    sget-object v5, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->OFF:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    filled-new-array/range {v0 .. v5}, [Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->ON:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const/4 v1, 0x6

    const-string v2, "ON_SUSPEND"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->ON_SUSPEND:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string v1, "VR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->VR:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string v1, "DOZE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->DOZE:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string v1, "DOZE_SUSPEND"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->DOZE_SUSPEND:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->OFF:Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    invoke-static {}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->$values()[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->$VALUES:[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->displayState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
    .locals 1

    const-class v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    return-object p0
.end method

.method public static values()[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
    .locals 1

    sget-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->$VALUES:[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    invoke-virtual {v0}, [Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    return-object v0
.end method


# virtual methods
.method public getDisplayState()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->displayState:I

    return p0
.end method
