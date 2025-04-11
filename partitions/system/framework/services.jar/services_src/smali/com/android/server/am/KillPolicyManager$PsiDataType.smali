.class public final enum Lcom/android/server/am/KillPolicyManager$PsiDataType;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$PsiDataType;

.field public static final enum AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

.field public static final enum TOTAL:Lcom/android/server/am/KillPolicyManager$PsiDataType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/KillPolicyManager$PsiDataType;
    .locals 2

    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    sget-object v1, Lcom/android/server/am/KillPolicyManager$PsiDataType;->TOTAL:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    filled-new-array {v0, v1}, [Lcom/android/server/am/KillPolicyManager$PsiDataType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;

    const/4 v1, 0x0

    const-string v2, "avg10"

    const-string v3, "AVG10"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/KillPolicyManager$PsiDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;

    const/4 v1, 0x1

    const-string/jumbo v2, "total"

    const-string v3, "TOTAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/KillPolicyManager$PsiDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->TOTAL:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$PsiDataType;->$values()[Lcom/android/server/am/KillPolicyManager$PsiDataType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiDataType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->mPath:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$PsiDataType;
    .locals 1

    const-class v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$PsiDataType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$PsiDataType;
    .locals 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$PsiDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$PsiDataType;

    return-object v0
.end method
