.class public abstract Lcom/android/server/firewall/StringFilter;
.super Ljava/lang/Object;
.source "StringFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final ACTION:Lcom/android/server/firewall/FilterFactory;

.field public static final COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;


# instance fields
.field public final mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 230
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string v1, "component"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 241
    new-instance v0, Lcom/android/server/firewall/StringFilter$2;

    const-string v1, "component-name"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 252
    new-instance v0, Lcom/android/server/firewall/StringFilter$3;

    const-string v1, "component-package"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 263
    new-instance v0, Lcom/android/server/firewall/StringFilter$4;

    const-string v1, "action"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    .line 271
    new-instance v0, Lcom/android/server/firewall/StringFilter$5;

    const-string v1, "data"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 283
    new-instance v0, Lcom/android/server/firewall/StringFilter$6;

    const-string/jumbo v1, "mime-type"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 291
    new-instance v0, Lcom/android/server/firewall/StringFilter$7;

    const-string/jumbo v1, "scheme"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 303
    new-instance v0, Lcom/android/server/firewall/StringFilter$8;

    const-string/jumbo v1, "scheme-specific-part"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 315
    new-instance v0, Lcom/android/server/firewall/StringFilter$9;

    const-string v1, "host"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 327
    new-instance v0, Lcom/android/server/firewall/StringFilter$10;

    const-string/jumbo v1, "path"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;)V

    return-void
.end method

.method public static getFilter(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/firewall/StringFilter;
    .locals 4

    .line 79
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x63

    const/4 v3, 0x0

    if-eq v1, v2, :cond_a

    const/16 v2, 0x65

    if-eq v1, v2, :cond_8

    const/16 v2, 0x69

    if-eq v1, v2, :cond_6

    const/16 v2, 0x70

    if-eq v1, v2, :cond_4

    const/16 v2, 0x72

    if-eq v1, v2, :cond_2

    const/16 v2, 0x73

    if-eq v1, v2, :cond_0

    return-object v3

    :cond_0
    const-string/jumbo v1, "startsWith"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    .line 96
    :cond_1
    new-instance v0, Lcom/android/server/firewall/StringFilter$StartsWithFilter;

    .line 97
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$StartsWithFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string/jumbo v1, "regex"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v3

    .line 113
    :cond_3
    new-instance v0, Lcom/android/server/firewall/StringFilter$RegexFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$RegexFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string/jumbo v1, "pattern"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v3

    .line 107
    :cond_5
    new-instance v0, Lcom/android/server/firewall/StringFilter$PatternStringFilter;

    .line 108
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$PatternStringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const-string v1, "isNull"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object v3

    .line 91
    :cond_7
    new-instance v0, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0

    :cond_8
    const-string v1, "equals"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object v3

    .line 86
    :cond_9
    new-instance v0, Lcom/android/server/firewall/StringFilter$EqualsFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$EqualsFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0

    :cond_a
    const-string v1, "contains"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-object v3

    .line 102
    :cond_b
    new-instance v0, Lcom/android/server/firewall/StringFilter$ContainsFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$ContainsFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readFromXml(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/StringFilter;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 58
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 59
    invoke-static {p0, p1, v2}, Lcom/android/server/firewall/StringFilter;->getFilter(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/firewall/StringFilter;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_1

    .line 62
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Multiple string filter attributes found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 71
    new-instance v0, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    invoke-direct {v0, p0, v1}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Z)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;

    invoke-virtual {p1, p2, p3, p6}, Lcom/android/server/firewall/StringFilter$ValueProvider;->getValue(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/StringFilter;->matchesValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public abstract matchesValue(Ljava/lang/String;)Z
.end method
