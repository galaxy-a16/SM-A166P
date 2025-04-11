.class public abstract Lla/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lla/b;

.field public static b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;->WARN:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    sput-object v0, Lla/a;->b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    sget-object v0, Lla/a;->b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;->DEBUG:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lla/a;->a:Lla/b;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v0, v1, p0, p1}, Lla/b;->print(Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "message is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    sget-object v0, Lla/a;->b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;->ERROR:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lla/a;->a:Lla/b;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v0, v1, p0, p1}, Lla/b;->print(Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "message is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    sget-object v0, Lla/a;->b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;->ERROR:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lla/a;->a:Lla/b;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v0, v1, p0, p1, p2}, Lla/b;->print(Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static d(Ljava/lang/String;Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainException;)V
    .locals 5

    if-eqz p0, :cond_3

    sget-object v0, Lla/a;->b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;->INFO:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lla/a;->a:Lla/b;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    const-string v2, "SYNC_MANAGER"

    invoke-interface {v0, v1, v2, p0, p1}, Lla/b;->print(Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "message is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    sget-object v0, Lla/a;->b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;->INFO:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lla/a;->a:Lla/b;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v0, v1, p0, p1}, Lla/b;->print(Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "message is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
