.class public final enum Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lp9/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;",
        ">;",
        "Lp9/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

.field public static final enum BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

.field public static final enum CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

.field public static final enum CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

.field public static final enum CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

.field public static final enum SCREEN_ON:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->SCREEN_ON:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v1, 0x0

    const v2, 0x895828

    const-string v3, "BASIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v1, 0x1

    const v2, 0x895c10

    const-string v3, "CLEAR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v1, 0x2

    const v2, 0x8963e0

    const-string v3, "CUSTOM_FEEDBACK"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v1, 0x3

    const v2, 0x8967c8

    const-string v3, "SCREEN_ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->SCREEN_ON:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v1, 0x4

    const v2, 0x896bb0

    const-string v3, "CHECK_NOTIFICATION_CLEARED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-static {}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->$values()[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->$VALUES:[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->value:I

    return-void
.end method

.method public static synthetic access$100(I)Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->getAction(I)Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    move-result-object p0

    return-object p0
.end method

.method private static getAction(I)Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->value()I

    move-result v2

    if-gt v2, p0, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->value()I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    if-ge p0, v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->$VALUES:[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->value:I

    return p0
.end method
