.class public final enum Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

.field public static final enum NORMAL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

.field public static final enum THRESHOLD_REACHED:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->NORMAL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->THRESHOLD_REACHED:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    const-string v1, "NORMAL_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->NORMAL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    const-string v1, "THRESHOLD_REACHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->THRESHOLD_REACHED:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->$values()[Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    return-object v0
.end method
