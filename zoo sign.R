library(tidyverse)
library(extrafont)

df <- data.frame(category = c(1,2,3,4,5,6),
                 value = c(2500, 540, 400, 340, 300, 0),
                 text = c('2,500 Bengal tigers',
                          '540 Amur tigers',
                          '400 Sumatran tigers',
                          '340 Malaysian tigers',
                          '300 Indo-Chinese tigers',
                          '0  South China tigers (approx. 60 live in Chinese zoos)'),
                 stringsAsFactors = F
                 )

circle <- data.frame(x = 2.45, y = 300, r = 22, category = 1.35, value = 2840)

ggplot(data = df, aes(x = category, y = rev(value))) + 
  geom_bar(stat = 'identity', fill = 'orangered2', width = .7) +
  geom_text(data = df, aes(x = category, y = 120, label = rev(text)), hjust = 0, family = 'Lucida Sans', size = 5.1, fontface = 'bold', color = 'white') +
  scale_y_continuous(limits = c(0, 4000)) +
  
  coord_flip() +
  
  ggforce::geom_circle(data = circle, aes(x0 = x, y0 = y, r = r), color = 'grey90', size = 90) +
  ggforce::geom_circle(data = circle, aes(x0 = x, y0 = y, r = r), color = 'grey10', size = 85) +
  
  annotate('text', x = 5, y = 3000, label = 'How We Can', color = 'gold1', family = 'Lucida Sans', fontface = 'bold', size = 6, angle = 10) +
  annotate('text', x = 4.55, y = 3100, label = 'Help Wild Tigers:', color = 'gold1', family = 'Lucida Sans', fontface = 'bold', size = 6, angle = 10) +
  annotate('text', x = 4.10, y = 3250, label = 'save wild habitat', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35, angle = 10) +
  annotate('text', x = 3.65, y = 3265, label = 'stronger laws to', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35, angle = 10) +
  annotate('text', x = 3.20, y = 3275, label = 'protect wildlife', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35, angle = 10) +
  annotate('text', x = 2.75, y = 3275, label = 'zoo breeding', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35, angle = 10) +
  annotate('text', x = 3.75, y = 2510, label = '^', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35, angle = 190) +
  annotate('text', x = 3.33, y = 2580, label = '^', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35, angle = 190) +
  annotate('text', x = 2.48, y = 2680, label = '^', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35, angle = 190) +
  
  annotate('text', x = 0.15, y = 500, label = 'EXTINCT:', color = 'orangered2', family = 'Lucida Sans', fontface = 'bold', size = 5.35 ) +
  annotate('text', x = -.35, y = 500, label = 'Javan Tiger', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35 ) +
  annotate('text', x = -.85, y = 500, label = '(1980s)', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35 ) +
  
  annotate('text', x = 0.15, y = 2000, label = 'EXTINCT:', color = 'orangered2', family = 'Lucida Sans', fontface = 'bold', size = 5.35 ) +
  annotate('text', x = -.35, y = 2000, label = 'Caspian Tiger', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35 ) +
  annotate('text', x = -.85, y = 2000, label = '(1967)', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35 ) +
  
  annotate('text', x = 0.15, y = 3500, label = 'EXTINCT:', color = 'orangered2', family = 'Lucida Sans', fontface = 'bold', size = 5.35 ) +
  annotate('text', x = -.35, y = 3500, label = 'Bali Tiger', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35 ) +
  annotate('text', x = -.85, y = 3500, label = '(1930s)', color = 'white', family = 'Lucida Sans', fontface = 'bold', size = 5.35 ) +
  
  labs(x = '',
       y = '',
       title = 'How Many Tigers Remain in the Wild?',
       subtitle = 'There are 9 subspecies (types) of tigers:') +
  
  theme(panel.background = element_rect(color = 'grey10', fill = 'grey10'),
        plot.background = element_rect(color = 'grey10', fill = 'grey10'),
        panel.grid = element_blank(),
        plot.title = element_text(size = 21.4, face = 'bold', family = 'Lucida Sans', color = 'white', hjust = 0.85),
        plot.subtitle = element_text(size = 19, face = 'bold', family = 'Lucida Sans', color = 'gold1', hjust = 0.285),
        axis.text = element_blank(),
        plot.margin = margin(1, 1, 1, 1, "cm"))
