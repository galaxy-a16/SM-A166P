.class public abstract Lcom/android/server/pm/pkg/component/InstallConstraintsTagParser;
.super Ljava/lang/Object;
.source "InstallConstraintsTagParser.java"


# direct methods
.method public static parseFingerprintPrefixes(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 78
    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 80
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "install-constraints must contain at least one constraint"

    .line 81
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 83
    :cond_1
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 85
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "fingerprint-prefix"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/component/InstallConstraintsTagParser;->readFingerprintPrefixValue(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected end tag; instead got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 91
    :cond_3
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected tag: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 2

    .line 53
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getInstallConstraintsAllowlist()Ljava/util/Set;

    move-result-object v0

    .line 54
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "install-constraints cannot be used by this package"

    .line 55
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/pkg/component/InstallConstraintsTagParser;->parseFingerprintPrefixes(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 59
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 60
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-static {p2}, Lcom/android/server/pm/pkg/component/InstallConstraintsTagParser;->validateFingerprintPrefixes(Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 61
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "Install of this package is restricted on this device; device fingerprint does not start with one of the allowed prefixes"

    .line 63
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 68
    :cond_2
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static readFingerprintPrefixValue(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1

    .line 108
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstallConstraintsFingerprintPrefix:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Failed to specify prefix value"

    .line 114
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 116
    :cond_0
    :try_start_1
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    throw p0
.end method

.method public static validateFingerprintPrefixes(Ljava/util/Set;)Z
    .locals 2

    .line 123
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 124
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
