.class public final enum Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;
.super Ljava/lang/Enum;
.source "MARsFreezeStateRecord.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

.field public static final enum FREEZE:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

.field public static final enum UNFREEZE:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;
    .locals 2

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->FREEZE:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    sget-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->UNFREEZE:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    filled-new-array {v0, v1}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    const-string v1, "FREEZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->FREEZE:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    const-string v1, "UNFREEZE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->UNFREEZE:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->$values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;
    .locals 1

    const-class v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    invoke-virtual {v0}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    return-object v0
.end method
