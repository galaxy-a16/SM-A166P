.class public Lorg/bouncycastle/i18n/LocalizedMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;
    }
.end annotation


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field protected arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected encoding:Ljava/lang/String;

.field protected extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected filter:Lorg/bouncycastle/i18n/filter/Filter;

.field protected final id:Ljava/lang/String;

.field protected loader:Ljava/lang/ClassLoader;

.field protected final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1, p0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;)V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    return-void

    :cond_0
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1, p0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;)V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    const-string p1, "The encoding \""

    const-string p2, "\" is not supported."

    .line 2
    invoke-static {p1, p3, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1, p0, p4}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    const-string p1, "The encoding \""

    const-string p2, "\" is not supported."

    .line 9
    invoke-static {p1, p3, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1, p0, p3}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    return-void

    :cond_0
    throw v0
.end method


# virtual methods
.method public addExtraArgs(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length p2, p0

    if-ge p1, p2, :cond_0

    aget-object p2, p0, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/text/MessageFormat;

    const-string v0, " "

    invoke-direct {p0, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_1

    aget-object v0, p1, p3

    instance-of v1, v0, Ljava/text/DateFormat;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, p3, v0}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getArguments()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {p0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 9

    const-string v0, "ISO-8859-1"

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    const-string v2, "."

    if-eqz p1, :cond_0

    invoke-static {v1, v2, p1}, Landroidx/activity/b;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v6, v1

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0, p2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/bouncycastle/i18n/LocalizedMessage;->formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedMessage;->addExtraArgs(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    new-instance p1, Lorg/bouncycastle/i18n/MissingEntryException;

    const-string p3, "Can\'t find entry "

    const-string v0, " in resource file "

    invoke-static {p3, v6, v0}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-static {p3, v0, v2}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    iget-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p3, :cond_4

    move-object v8, p3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/i18n/LocalizedMessage;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    move-object v8, p0

    :goto_1
    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/i18n/MissingEntryException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    throw p1
.end method

.method public getExtraArgs()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFilter()Lorg/bouncycastle/i18n/filter/Filter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getResource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    return-object p0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setExtraArgument(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/i18n/LocalizedMessage;->setExtraArguments([Ljava/lang/Object;)V

    return-void
.end method

.method public setExtraArguments([Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    :goto_0
    return-void
.end method

.method public setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Resource: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" Id: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" Arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " extra"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, " Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ClassLoader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
