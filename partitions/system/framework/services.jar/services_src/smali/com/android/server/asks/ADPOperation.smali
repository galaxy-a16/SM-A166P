.class public abstract Lcom/android/server/asks/ADPOperation;
.super Ljava/lang/Object;
.source "ADPOperation.java"


# direct methods
.method public static synthetic $r8$lambda$V5zHYLeleTVEGbsLv2FGuDowQ-E(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->lambda$isSameCategoryByHashCode$0(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result p0

    return p0
.end method

.method public static filterADPPolicy(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getRegexFromVType(I)Ljava/util/regex/Pattern;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "^(\\d?\\d{4})\\d{2}(\\d{3})\\z"

    goto :goto_0

    :cond_1
    const-string p0, "^(\\d?\\d{6})\\d{3}\\z"

    goto :goto_0

    :cond_2
    const-string p0, "^(\\d?\\d{9})\\z"

    goto :goto_0

    :cond_3
    const-string p0, "^(\\d?\\d{4})\\d{5}\\z"

    :goto_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGreaterOrEqual(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v0

    const v1, 0x65837583

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isSameCategoryByHashCode(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1

    new-instance v0, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$isSameCategoryByHashCode$0(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->findMatcherByHashCode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
