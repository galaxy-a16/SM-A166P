.class final enum Lcom/android/server/am/CrashDexOpt$CrashKind;
.super Ljava/lang/Enum;
.source "CrashDexOpt.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/CrashDexOpt$CrashKind;

.field public static final enum JAVA:Lcom/android/server/am/CrashDexOpt$CrashKind;

.field public static final enum NATIVE:Lcom/android/server/am/CrashDexOpt$CrashKind;


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/CrashDexOpt$CrashKind;
    .locals 2

    .line 66
    sget-object v0, Lcom/android/server/am/CrashDexOpt$CrashKind;->JAVA:Lcom/android/server/am/CrashDexOpt$CrashKind;

    sget-object v1, Lcom/android/server/am/CrashDexOpt$CrashKind;->NATIVE:Lcom/android/server/am/CrashDexOpt$CrashKind;

    filled-new-array {v0, v1}, [Lcom/android/server/am/CrashDexOpt$CrashKind;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Lcom/android/server/am/CrashDexOpt$CrashKind;

    const-string v1, "JAVA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/CrashDexOpt$CrashKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CrashDexOpt$CrashKind;->JAVA:Lcom/android/server/am/CrashDexOpt$CrashKind;

    new-instance v0, Lcom/android/server/am/CrashDexOpt$CrashKind;

    const-string v1, "NATIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/CrashDexOpt$CrashKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CrashDexOpt$CrashKind;->NATIVE:Lcom/android/server/am/CrashDexOpt$CrashKind;

    .line 66
    invoke-static {}, Lcom/android/server/am/CrashDexOpt$CrashKind;->$values()[Lcom/android/server/am/CrashDexOpt$CrashKind;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CrashDexOpt$CrashKind;->$VALUES:[Lcom/android/server/am/CrashDexOpt$CrashKind;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/CrashDexOpt$CrashKind;
    .locals 1

    .line 66
    const-class v0, Lcom/android/server/am/CrashDexOpt$CrashKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/CrashDexOpt$CrashKind;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/CrashDexOpt$CrashKind;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/server/am/CrashDexOpt$CrashKind;->$VALUES:[Lcom/android/server/am/CrashDexOpt$CrashKind;

    invoke-virtual {v0}, [Lcom/android/server/am/CrashDexOpt$CrashKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/CrashDexOpt$CrashKind;

    return-object v0
.end method
